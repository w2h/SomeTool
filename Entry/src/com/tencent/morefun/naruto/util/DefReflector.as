package com.tencent.morefun.naruto.util
{
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   
   public class DefReflector
   {
       
      private var map:Dictionary;
      
      public function DefReflector(param1:Class)
      {
         super();
         this.update(param1);
      }
      
      public function update(param1:Class) : void
      {
         var _loc2_:String = null;
         var _loc4_:XML = null;
         this.map = new Dictionary(false);
         if(!param1)
         {
            return;
         }
         var _loc3_:XMLList = describeType(param1).constant;
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = String(_loc4_.@name);
            this.map[param1[_loc2_]] = _loc2_;
         }
      }
      
      public function getName(param1:*) : String
      {
         return this.map[param1];
      }
      
      public function setName(param1:*, param2:String) : void
      {
         this.map[param1] = param2;
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(this.map,"autoDestroy");
         this.map = null;
         this.map = null;
      }
   }
}
