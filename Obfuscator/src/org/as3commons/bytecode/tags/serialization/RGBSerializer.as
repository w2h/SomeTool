package org.as3commons.bytecode.tags.serialization
{
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.util.SWFSpec;
   import org.as3commons.bytecode.tags.struct.RGB;
   
   public class RGBSerializer extends AbstractStructSerializer
   {
       
      public function RGBSerializer()
      {
         super();
      }
      
      override public function read(param1:ByteArray) : Object
      {
         SWFSpec.flushBits();
         var _loc2_:RGB = new RGB();
         this.readRGB(param1,_loc2_);
         return _loc2_;
      }
      
      protected function readRGB(param1:ByteArray, param2:RGB) : void
      {
         param2.red = param1.readUnsignedByte();
         param2.green = param1.readUnsignedByte();
         param2.blue = param1.readUnsignedByte();
      }
      
      override public function write(param1:ByteArray, param2:Object) : void
      {
         SWFSpec.flushBits();
         var _loc3_:RGB = param2 as RGB;
         if(_loc3_ != null)
         {
            param1.writeByte(_loc3_.red);
            param1.writeByte(_loc3_.green);
            param1.writeByte(_loc3_.blue);
         }
      }
   }
}
