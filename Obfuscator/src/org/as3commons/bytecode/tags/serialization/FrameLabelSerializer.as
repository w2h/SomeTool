package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.FrameLabelTag;
   import org.as3commons.bytecode.util.SWFSpec;
   
   public class FrameLabelSerializer extends AbstractTagSerializer
   {
       
      public function FrameLabelSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:FrameLabelTag = new FrameLabelTag();
         _loc3_.frameLabelName = SWFSpec.readString(param1);
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:FrameLabelTag = FrameLabelTag(param2);
         SWFSpec.writeString(param1,_loc3_.frameLabelName);
      }
   }
}
