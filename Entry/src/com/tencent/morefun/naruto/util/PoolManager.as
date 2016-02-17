package com.tencent.morefun.naruto.util
{
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getDefinitionByName;
   
   public class PoolManager
   {
      
      private static const hashObject:Dictionary = new Dictionary();
       
      public function PoolManager()
      {
         super();
      }
      
      public static function getObject(param1:Class) : Object
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return null;
         }
         if(param1 is Class)
         {
            _loc2_ = getQualifiedClassName(param1);
         }
         else
         {
            _loc2_ = param1 as String;
         }
         var _loc3_:Vector.<Object> = PoolManager.hashObject[_loc2_];
         if(!_loc3_)
         {
            _loc3_ = new Vector.<Object>();
            PoolManager.hashObject[_loc2_] = _loc3_;
         }
         if(_loc3_.length)
         {
            return _loc3_.pop();
         }
         var param1:Class = getDefinitionByName(_loc2_) as Class;
         return new param1();
      }
      
      public static function gcObject(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<Object> = null;
         if(param1)
         {
            _loc2_ = getQualifiedClassName(param1);
            _loc3_ = PoolManager.hashObject[_loc2_];
            if(_loc3_.indexOf(param1) < 0)
            {
               _loc3_.push(param1);
            }
         }
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
