package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.FileAttributesTag;
   import org.as3commons.bytecode.util.SWFSpec;
   
   public class FileAttributesSerializer extends AbstractTagSerializer
   {
       
      public function FileAttributesSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:FileAttributesTag = new FileAttributesTag();
         SWFSpec.flushBits();
         SWFSpec.readUB(param1);
         _loc3_.useDirectBlit = SWFSpec.readBoolean(param1);
         _loc3_.useGPU = SWFSpec.readBoolean(param1);
         _loc3_.hasMetadata = SWFSpec.readBoolean(param1);
         _loc3_.actionScript3 = SWFSpec.readBoolean(param1);
         SWFSpec.readUB(param1,2);
         _loc3_.useNetwork = SWFSpec.readBoolean(param1);
         SWFSpec.readUB(param1,24);
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:FileAttributesTag = FileAttributesTag(param2);
         SWFSpec.flushBits();
         SWFSpec.writeUB(param1,1,0);
         SWFSpec.writeBoolean(param1,_loc3_.useDirectBlit);
         SWFSpec.writeBoolean(param1,_loc3_.useGPU);
         SWFSpec.writeBoolean(param1,_loc3_.hasMetadata);
         SWFSpec.writeBoolean(param1,_loc3_.actionScript3);
         SWFSpec.writeUB(param1,2,0);
         SWFSpec.writeBoolean(param1,_loc3_.useNetwork);
         SWFSpec.writeUB(param1,24,0);
      }
   }
}
