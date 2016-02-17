package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.io.AbcDeserializer;
   import org.as3commons.bytecode.io.AbcSerializer;
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.DoABCTag;
   import org.as3commons.bytecode.util.SWFSpec;
   
   public class DoABCSerializer extends AbstractTagSerializer
   {
       
      private var _deserializer:AbcDeserializer;
      
      private var _serializer:AbcSerializer;
      
      public function DoABCSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      public function set deserializer(param1:AbcDeserializer) : void
      {
         this._deserializer = param1;
      }
      
      public function set serializer(param1:AbcSerializer) : void
      {
         this._serializer = param1;
      }
      
      public function get deserializer() : AbcDeserializer
      {
         if(this._deserializer == null)
         {
            this._deserializer = new AbcDeserializer();
         }
         return this._deserializer;
      }
      
      public function get serializer() : AbcSerializer
      {
         if(this._serializer == null)
         {
            this._serializer = new AbcSerializer();
         }
         return this._serializer;
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:DoABCTag = new DoABCTag();
         _loc3_.flags = SWFSpec.readUI32(param1);
         _loc3_.byteCodeName = SWFSpec.readString(param1);
         trace("Starting deserialization for ABC Tag " + _loc3_.byteCodeName);
         this.deserializer.byteStream = param1;
         _loc3_.abcFile = this.deserializer.deserialize(param1.position);
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:DoABCTag = DoABCTag(param2);
         this.writeTagHeader(param1,_loc3_);
         var _loc4_:ByteArray = this.serializer.serializeAbcFile(_loc3_.abcFile);
         _loc4_.position = 0;
         param1.writeBytes(_loc4_);
      }
      
      public function writeTagHeader(param1:ByteArray, param2:DoABCTag) : void
      {
         SWFSpec.writeUI32(param1,param2.flags);
         SWFSpec.writeString(param1,param2.byteCodeName);
      }
   }
}
