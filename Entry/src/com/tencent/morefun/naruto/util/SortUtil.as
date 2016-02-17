package com.tencent.morefun.naruto.util
{
   public class SortUtil
   {
      
      private static var numberParams:Array;
      
      private static var isDescending:Boolean;
      
      private static var stringParams:Array;
      
      private static var isIgnoreCaseinsensitive:Boolean;
       
      public function SortUtil()
      {
         super();
      }
      
      public static function sortByNumber(param1:Object, param2:Array, param3:Boolean = false) : void
      {
         numberParams = param2;
         isDescending = param3;
         param1.sort(numberSortFunc);
      }
      
      private static function numberSortFunc(param1:Object, param2:Object) : int
      {
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         while(true)
         {
            if(_loc7_ >= numberParams.length)
            {
               return 0;
            }
            _loc3_ = numberParams[_loc7_];
            _loc4_ = param1[_loc3_];
            _loc5_ = param2[_loc3_];
            if(_loc4_ > _loc5_)
            {
               _loc6_ = 1;
               break;
            }
            if(_loc4_ < _loc5_)
            {
               _loc6_ = -1;
               break;
            }
            if(_loc7_ != numberParams.length - 1)
            {
               _loc7_++;
               continue;
            }
            break;
         }
         if(isDescending)
         {
            _loc6_ = _loc6_ * -1;
         }
         return _loc6_;
      }
      
      public static function sortByString(param1:Object, param2:Array, param3:Boolean = false, param4:Boolean = false) : void
      {
         stringParams = param2;
         isDescending = param3;
         isIgnoreCaseinsensitive = param4;
         param1.sort(stringSortFunc);
      }
      
      private static function stringSortFunc(param1:Object, param2:Object) : int
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc11_:* = 0;
         var _loc10_:int = 0;
         while(true)
         {
            if(_loc10_ >= stringParams.length)
            {
               return 0;
            }
            _loc3_ = stringParams[_loc10_];
            _loc4_ = param1[_loc3_] || "";
            _loc5_ = param2[_loc3_] || "";
            if(!(_loc4_ is String) || !(_loc5_ is String))
            {
               if(_loc10_ == numberParams.length - 1)
               {
                  return 0;
               }
            }
            else
            {
               _loc8_ = Math.max(_loc4_.length,_loc5_.length);
               _loc11_ = 0;
               while(_loc11_ < _loc8_)
               {
                  _loc6_ = _loc4_.charCodeAt(_loc11_);
                  _loc7_ = _loc5_.charCodeAt(_loc11_);
                  if(isIgnoreCaseinsensitive && _loc6_ >= 90 && _loc6_ <= 122)
                  {
                     _loc6_ = _loc6_ - 32;
                  }
                  if(isIgnoreCaseinsensitive && _loc7_ >= 90 && _loc7_ <= 122)
                  {
                     _loc7_ = _loc7_ - 32;
                  }
                  if(_loc6_ > _loc7_)
                  {
                     _loc9_ = 1;
                     break;
                  }
                  if(_loc6_ < _loc7_)
                  {
                     _loc9_ = -1;
                     break;
                  }
                  if(_loc11_ != _loc8_ - 1)
                  {
                  }
                  _loc11_++;
               }
               if(!(_loc9_ == 0 && _loc10_ != stringParams.length - 1))
               {
                  break;
               }
            }
            _loc10_++;
         }
         if(isDescending)
         {
            _loc9_ = _loc9_ * -1;
         }
         return _loc9_;
      }
      
      public function autoSetNull() : void
      {
         numberParams = null;
         stringParams = null;
      }
   }
}
