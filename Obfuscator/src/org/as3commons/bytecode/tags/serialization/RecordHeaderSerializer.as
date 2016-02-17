package org.as3commons.bytecode.tags.serialization
{
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.util.SWFSpec;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   
   public class RecordHeaderSerializer extends AbstractStructSerializer
   {
      
      public static const ID_SHIFT:uint = 6;
      
      public static const LONG_TAG:uint = 63;
       
      public function RecordHeaderSerializer()
      {
         super();
      }
      
      override public function read(param1:ByteArray) : Object
      {
         var _loc2_:uint = SWFSpec.readUI16(param1);
         var _loc3_:* = _loc2_ >> ID_SHIFT;
         var _loc4_:* = _loc2_ & LONG_TAG;
         var _loc5_:* = false;
         if(_loc4_ == LONG_TAG)
         {
            _loc4_ = SWFSpec.readUI32(param1);
            _loc5_ = true;
         }
         return new RecordHeader(_loc3_,_loc4_,_loc5_);
      }
      
      override public function write(param1:ByteArray, param2:Object) : void
      {
         var _loc3_:RecordHeader = RecordHeader(param2);
         if(!_loc3_.isLongTag)
         {
            SWFSpec.writeUI16(param1,_loc3_.id << ID_SHIFT | _loc3_.length);
         }
         else
         {
            SWFSpec.writeUI16(param1,_loc3_.id << ID_SHIFT | LONG_TAG);
            SWFSpec.writeUI32(param1,_loc3_.length);
         }
      }
   }
}
