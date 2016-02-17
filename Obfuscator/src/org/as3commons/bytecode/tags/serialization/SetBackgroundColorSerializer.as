package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.SetBackgroundColorTag;
   import org.as3commons.bytecode.tags.struct.RGB;
   
   public class SetBackgroundColorSerializer extends AbstractTagSerializer
   {
       
      public function SetBackgroundColorSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:SetBackgroundColorTag = new SetBackgroundColorTag();
         var _loc4_:IStructSerializer = structSerializerFactory.createSerializer(RGB);
         _loc3_.backgroundColor = _loc4_.read(param1) as RGB;
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:SetBackgroundColorTag = SetBackgroundColorTag(param2);
         var _loc4_:IStructSerializer = structSerializerFactory.createSerializer(RGB);
         _loc4_.write(param1,_loc3_.backgroundColor);
      }
   }
}
