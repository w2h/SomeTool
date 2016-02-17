package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class PointElementData extends BaseElementData
   {
      
      public static const ClassAlias:String = "PointElementData";
       
      public var name:String;
      
      public function PointElementData()
      {
         super();
      }
      
      override public function decode(param1:XML) : void
      {
         super.decode(param1);
         this.name = param1.@name;
      }
      
      override public function clone() : BaseElementData
      {
         var _loc1_:PointElementData = new PointElementData();
         _loc1_.name = this.name;
         _loc1_.x = x;
         _loc1_.y = y;
         return _loc1_;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.name = null;
      }
   }
}
