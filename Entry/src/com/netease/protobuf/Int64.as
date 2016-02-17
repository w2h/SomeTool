package com.netease.protobuf
{
	import flash.errors.IllegalOperationError;

   public final class Int64 extends Binary64
   {
       
      public function Int64(param1:uint = 0, param2:int = 0)
      {
         super(param1,param2);
      }
      
      public static function fromNumber(param1:Number) : Int64
      {
         return new Int64(param1,Math.floor(param1 / 4.294967296E9));
      }
      
      public static function parseInt64(param1:String, param2:uint = 0) : Int64
      {
         var _loc6_:uint = 0;
         var _loc3_:Boolean = param1.search(new RegExp("^\\-")) == 0;
         var _loc4_:uint = _loc3_?1:0;
         if(param2 == 0)
         {
            if(param1.search(new RegExp("^\\-?0x")) == 0)
            {
               var param2:uint = 16;
               _loc4_ = _loc4_ + 2;
            }
            else
            {
               param2 = 10;
            }
         }
         if(param2 < 2 || param2 > 36)
         {
            throw new ArgumentError();
         }
         var param1:String = param1.toLowerCase();
         var _loc5_:Int64 = new Int64();
         while(_loc4_ < param1.length)
         {
            _loc6_ = param1.charCodeAt(_loc4_);
            if(_loc6_ >= CHAR_CODE_0 && _loc6_ <= CHAR_CODE_9)
            {
               _loc6_ = _loc6_ - CHAR_CODE_0;
            }
            else if(_loc6_ >= CHAR_CODE_A && _loc6_ <= CHAR_CODE_Z)
            {
               _loc6_ = _loc6_ - CHAR_CODE_A;
               _loc6_ = _loc6_ + 10;
            }
            else
            {
               throw new ArgumentError();
            }
            if(_loc6_ >= param2)
            {
               throw new ArgumentError();
            }
            _loc5_.mul(param2);
            _loc5_.add(_loc6_);
            _loc4_++;
         }
         if(_loc3_)
         {
            _loc5_.bitwiseNot();
            _loc5_.add(1);
         }
         return _loc5_;
      }
      
      public final function set high(param1:int) : void
      {
         internalHigh = param1;
      }
      
      public final function get high() : int
      {
         return internalHigh;
      }
      
      public final function toNumber() : Number
      {
         return this.high * 4.294967296E9 + low;
      }
      
      public final function toString(param1:uint = 10) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.autoSetNull();
         }
      }
   }
}
