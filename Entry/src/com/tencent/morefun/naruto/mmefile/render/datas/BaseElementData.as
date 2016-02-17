package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class BaseElementData
   {
       
      public var x:Number;
      
      public var y:Number;
      
      public function BaseElementData()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.x = Number(param1.@x);
         this.y = Number(param1.@y);
      }
      
      public function clone() : BaseElementData
      {
         var _loc1_:BaseElementData = new BaseElementData();
         _loc1_.x = this.x;
         _loc1_.y = this.y;
         return _loc1_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
