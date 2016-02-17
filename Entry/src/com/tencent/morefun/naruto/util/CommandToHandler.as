package com.tencent.morefun.naruto.util
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.base.Command;
   import avmplus.getQualifiedClassName;
   
   public class CommandToHandler
   {
       
      private var _cmdMap:Dictionary;
      
      public function CommandToHandler()
      {
         this._cmdMap = new Dictionary();
         super();
      }
      
      public function handle(param1:Command) : void
      {
         var _loc3_:Function = null;
         var _loc2_:String = getQualifiedClassName(param1);
         if(_loc2_ in this._cmdMap)
         {
            _loc3_ = this._cmdMap[_loc2_];
            if(_loc3_.length == 1)
            {
               _loc3_(param1);
            }
            else if(_loc3_.length == 0)
            {
               _loc3_();
            }
            else
            {
               throw ArgumentError("参数数量不对");
            }
         }
      }
      
      public function addToMap(param1:Class, param2:Function) : void
      {
         this._cmdMap[getQualifiedClassName(param1)] = param2;
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(this._cmdMap,"autoDestroy");
         this._cmdMap = null;
         this._cmdMap = null;
      }
   }
}
