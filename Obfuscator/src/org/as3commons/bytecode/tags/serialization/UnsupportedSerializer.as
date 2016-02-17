package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.UnsupportedTag;
   import org.as3commons.bytecode.util.AbcSpec;
   
   public class UnsupportedSerializer extends AbstractTagSerializer
   {
       
      public function UnsupportedSerializer()
      {
         super(null);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:UnsupportedTag = new UnsupportedTag(param2.id);
         _loc3_.tagBody = AbcSpec.newByteArray();
         param1.readBytes(_loc3_.tagBody,0,param2.length);
         _loc3_.tagBody.position = 0;
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:UnsupportedTag = param2 as UnsupportedTag;
         _loc3_.tagBody.position = 0;
         param1.writeBytes(_loc3_.tagBody);
      }
   }
}
