package com.tencent.morefun.naruto.geom
{
   public class IntPoint
   {
       
      public var x:int;
      
      public var y:int;
      
      public function IntPoint(param1:int, param2:int)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public function clone() : IntPoint
      {
         return new IntPoint(this.x,this.y);
      }
      
      public function toString() : String
      {
         return "IntPoint{x:" + this.x + ",y:" + this.y + "}";
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
