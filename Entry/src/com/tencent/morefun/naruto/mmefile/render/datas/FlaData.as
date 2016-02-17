package com.tencent.morefun.naruto.mmefile.render.datas
{
   public class FlaData
   {
       
      public var actions:Object;
      
      public var events:Object;
      
      public var referPoints:Object;
      
      public function FlaData()
      {
         this.actions = {};
         this.events = {};
         this.referPoints = {};
         super();
      }
      
      public function hasActionName(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for(_loc2_ in this.actions)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function addAction(param1:String, param2:Array) : void
      {
         this.actions[param1] = param2;
      }
      
      public function getAction(param1:String) : Array
      {
         var _loc2_:String = null;
         for(_loc2_ in this.actions)
         {
            if(_loc2_ == param1)
            {
               return this.actions[_loc2_];
            }
         }
         return null;
      }
      
      public function getTotalFrame(param1:String) : int
      {
         var _loc3_:FlaFrameBitmapData = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.getAction(param1))
         {
            _loc2_ = _loc2_ + _loc3_.length;
         }
         return _loc2_;
      }
      
      public function autoSetNull() : void
      {
         this.actions = null;
         this.events = null;
         this.referPoints = null;
      }
   }
}
