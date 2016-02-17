package com.tencent.morefun.naruto.geom
{
   public class HSB
   {
       
      public var h:Number;
      
      public var s:Number;
      
      public var b:Number;
      
      public function HSB(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.h = param1;
         this.s = param2;
         this.b = param3;
      }
      
      public function toTint() : Tint
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function toString() : String
      {
         var _loc1_:String = "HSB:{h:" + this.h + ",s:" + this.s + ",b:" + this.b + "}";
         return _loc1_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
