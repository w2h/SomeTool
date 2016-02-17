package org.as3commons.bytecode.tags.serialization
{
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.util.SWFSpec;
   import org.as3commons.bytecode.tags.struct.RGBA;
   
   public class RGBASerializer extends RGBSerializer
   {
       
      public function RGBASerializer()
      {
         super();
      }
      
      override public function read(param1:ByteArray) : Object
      {
         SWFSpec.flushBits();
         var _loc2_:RGBA = new RGBA();
         readRGB(param1,_loc2_);
         _loc2_.alpha = param1.readUnsignedByte();
         return _loc2_;
      }
      
      override public function write(param1:ByteArray, param2:Object) : void
      {
         super.write(param1,param2);
         var _loc3_:RGBA = param2 as RGBA;
         if(_loc3_ != null)
         {
            param1.writeByte(_loc3_.alpha);
         }
      }
   }
}
