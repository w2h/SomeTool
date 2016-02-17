package com.tencent.morefun.naruto.language
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class LanguModel extends EventDispatcher
   {
       
      protected var languModelName:String;
      
      protected var languList:XML;
      
      protected var languMap:Dictionary;
      
      public function LanguModel(param1:String, param2:XML)
      {
         var _loc3_:Object = null;
         super();
         this.languModelName = param1;
         this.languList = param2;
         this.languMap = new Dictionary();
         for each(_loc3_ in param2.item)
         {
            this.languMap[int(_loc3_.@id)] = String(_loc3_.@value);
         }
      }
      
      public function getStr(param1:int) : String
      {
         var _loc2_:String = this.languMap[param1] as String;
         return _loc2_;
      }
      
      public function getLanguModelName() : String
      {
         return this.languModelName;
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(this.languMap,"autoDestroy");
         this.languMap = null;
         this.languModelName = null;
         this.languMap = null;
      }
   }
}
