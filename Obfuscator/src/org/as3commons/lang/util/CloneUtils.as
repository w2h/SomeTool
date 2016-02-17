package org.as3commons.lang.util
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.Assert;
   import flash.utils.Dictionary;
   
   public final class CloneUtils
   {
       
      public function CloneUtils()
      {
         super();
      }
      
      public static function cloneList(param1:Array) : Array
      {
         var _loc3_:ICloneable = null;
         Assert.notNull(param1,"cloneables argument must not be null");
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_[_loc2_.length] = _loc3_.clone();
         }
         return _loc2_;
      }
      
      public static function cloneDictionary(param1:Dictionary) : Dictionary
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc2_:Dictionary = new Dictionary();
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            _loc5_ = _loc3_ is ICloneable?ICloneable(_loc3_):_loc3_;
            _loc2_[_loc5_] = _loc4_ is ICloneable?ICloneable(_loc4_):_loc4_;
         }
         return _loc2_;
      }
   }
}
