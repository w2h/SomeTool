package org.as3commons.bytecode.swf
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import org.as3commons.bytecode.tags.serialization.UnsupportedSerializer;
   import org.as3commons.bytecode.tags.serialization.RecordHeaderSerializer;
   import org.as3commons.bytecode.tags.serialization.StructSerializerFactory;
   import org.as3commons.bytecode.tags.DoABCTag;
   import org.as3commons.bytecode.tags.serialization.DoABCSerializer;
   import org.as3commons.bytecode.tags.serialization.ITagSerializer;
   import org.as3commons.bytecode.swf.event.SWFFileIOEvent;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.ISWFTag;
   import org.as3commons.bytecode.util.AbcSpec;
   import org.as3commons.bytecode.util.SWFSpec;
   import flash.utils.Endian;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   
   public class SWFWeaverFileIO extends EventDispatcher implements ISWFFileIO
   {
      
      public static const SWF_SIGNATURE_COMPRESSED:String = "CWS";
      
      public static const SWF_SIGNATURE_UNCOMPRESSED:String = "FWS";
       
      private var _tagSerializers:Dictionary;
      
      private var _serializerInstances:Dictionary;
      
      protected var unsupportedTagSerializer:UnsupportedSerializer;
      
      protected var recordHeaderSerializer:RecordHeaderSerializer;
      
      protected var structSerializerFactory:StructSerializerFactory;
      
      public function SWFWeaverFileIO()
      {
         super();
         this.initSWFWeaverFileIO();
      }
      
      public function get serializerInstances() : Dictionary
      {
         return this._serializerInstances;
      }
      
      public function get tagSerializers() : Dictionary
      {
         return this._tagSerializers;
      }
      
      protected function initSWFWeaverFileIO() : void
      {
         this.unsupportedTagSerializer = new UnsupportedSerializer();
         this.recordHeaderSerializer = new RecordHeaderSerializer();
         this.structSerializerFactory = new StructSerializerFactory();
         this._tagSerializers = new Dictionary();
         this._serializerInstances = new Dictionary();
         this.tagSerializers[DoABCTag.TAG_ID] = DoABCSerializer;
      }
      
      public function createTagSerializer(param1:uint) : ITagSerializer
      {
         var _loc3_:SWFFileIOEvent = null;
         var _loc2_:ITagSerializer = this.serializerInstances[param1];
         if(_loc2_ == null)
         {
            if(this.tagSerializers[param1] != null)
            {
               _loc2_ = new this.tagSerializers[param1](this.structSerializerFactory);
               _loc3_ = new SWFFileIOEvent(SWFFileIOEvent.TAG_SERIALIZER_CREATED,_loc2_);
               dispatchEvent(_loc3_);
               _loc2_ = _loc3_.tagSerializer;
               this.serializerInstances[param1] = _loc2_;
            }
            else
            {
               _loc2_ = this.unsupportedTagSerializer;
            }
         }
         return _loc2_;
      }
      
      public function read(param1:ByteArray) : SWFFile
      {
         var bytes:ByteArray = null;
         var compressed:Boolean = false;
         var tag:ISWFTag = null;
         var input:ByteArray = param1;
         var originalPosition:uint = input.position;
         var swfFile:SWFFile = new SWFFile();
         try
         {
            input.position = 0;
            bytes = AbcSpec.newByteArray();
            input.endian = bytes.endian;
            swfFile.signature = input.readUTFBytes(3);
            compressed = swfFile.signature == SWF_SIGNATURE_COMPRESSED;
            swfFile.version = SWFSpec.readSI8(input);
            swfFile.fileLength = SWFSpec.readUI32(input);
            input.readBytes(bytes);
            bytes.position = 0;
            if(compressed)
            {
               bytes.uncompress();
               bytes.position = 0;
            }
            this.readHeader(bytes,swfFile);
            while(bytes.bytesAvailable)
            {
               tag = this.readTag(bytes);
               if(tag != null)
               {
                  swfFile.addTag(tag);
               }
            }
         }
         finally
         {
            input.position = originalPosition;
         }
         return swfFile;
      }
      
      public function write(param1:ByteArray, param2:SWFFile) : void
      {
         var _loc4_:ISWFTag = null;
         var _loc5_:* = 0;
         param1.endian = Endian.LITTLE_ENDIAN;
         param1.position = 0;
         param1.writeUTFBytes(param2.signature);
         SWFSpec.writeSI8(param1,param2.version);
         var _loc3_:ByteArray = AbcSpec.newByteArray();
         this.writeHeader(_loc3_,param2);
         for each(_loc4_ in param2.tags)
         {
            this.writeTag(_loc3_,_loc4_);
         }
         _loc5_ = _loc3_.length;
         if(param2.signature == SWF_SIGNATURE_COMPRESSED)
         {
            _loc3_.position = 0;
            _loc3_.compress();
         }
         _loc3_.position = 0;
         SWFSpec.writeUI32(param1,_loc5_);
         param1.writeBytes(_loc3_);
      }
      
      protected function readTag(param1:ByteArray) : ISWFTag
      {
         var _loc2_:RecordHeader = this.recordHeaderSerializer.read(param1) as RecordHeader;
         var _loc3_:ITagSerializer = this.createTagSerializer(_loc2_.id);
         if(_loc3_ != null)
         {
            return _loc3_.read(param1,_loc2_);
         }
         param1.position = param1.position + _loc2_.length;
         return null;
      }
      
      protected function writeTag(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:ITagSerializer = this.createTagSerializer(param2.id);
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.endian = Endian.LITTLE_ENDIAN;
         _loc3_.write(_loc4_,param2);
         _loc4_.position = 0;
         var _loc5_:RecordHeader = new RecordHeader(param2.id,_loc4_.length,_loc4_.length > RecordHeaderSerializer.LONG_TAG);
         this.recordHeaderSerializer.write(param1,_loc5_);
         param1.writeBytes(_loc4_);
         _loc4_ = null;
      }
      
      protected function readHeader(param1:ByteArray, param2:SWFFile) : void
      {
         param2.frameSize = SWFSpec.readBitRect(param1);
         param2.frameRate = SWFSpec.readUI16(param1);
         param2.frameCount = SWFSpec.readUI16(param1);
      }
      
      protected function writeHeader(param1:ByteArray, param2:SWFFile) : void
      {
         SWFSpec.writeBitRect(param1,param2.frameSize);
         SWFSpec.writeUI16(param1,param2.frameRate);
         SWFSpec.writeUI16(param1,param2.frameCount);
      }
   }
}
