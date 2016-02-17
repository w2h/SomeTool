package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.MetadataTag;
   import org.as3commons.bytecode.util.SWFSpec;
   
   public class MetadataSerializer extends AbstractTagSerializer
   {
       
      public function MetadataSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:MetadataTag = new MetadataTag();
         _loc3_.metadata = SWFSpec.readString(param1);
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:MetadataTag = param2 as MetadataTag;
         SWFSpec.writeString(param1,_loc3_.metadata);
      }
   }
}
