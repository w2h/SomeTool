package com.greensock.easing
{
   public class SteppedEase
   {
       
      private var _steps:int;
      
      private var _stepAmount:Number;
      
      public function SteppedEase(param1:int)
      {
         super();
         this._stepAmount = 1 / param1;
         this._steps = param1 + 1;
      }
      
      public static function create(param1:int) : Function
      {
         var _loc2_:SteppedEase = new SteppedEase(param1);
         return _loc2_.ease;
      }
      
      public function ease(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param1 / param4;
         if(_loc5_ < 0)
         {
            _loc5_ = 0;
         }
         else if(_loc5_ >= 1)
         {
            _loc5_ = 0.999999999;
         }
         return (this._steps * _loc5_ >> 0) * this._stepAmount;
      }
      
      public function get steps() : int
      {
         return this._steps - 1;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
