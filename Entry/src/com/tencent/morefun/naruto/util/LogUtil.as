package com.tencent.morefun.naruto.util
{
   import flash.utils.getTimer;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class LogUtil
   {
      
      private static const baseType:Array = ["int","Number","String","uint","Boolean","null"];
       
      public function LogUtil()
      {
         super();
      }
      
      public static function getLogStr(param1:Object) : String
      {
         var _loc2_:String = null;
         _loc2_ = getClassName(param1);
         if(_loc2_ == "Array")
         {
            return getArrayLogString(param1 as Array);
         }
         return getObjectLogString(param1);
      }
      
      private static function getObjectLogString(param1:Object) : String
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:XML = null;
         var _loc6_:XMLList = null;
         var _loc7_:XML = null;
         var _loc8_:String = null;
         var _loc9_:* = NaN;
         _loc3_ = getClassName(param1);
         _loc9_ = getTimer();
         _loc5_ = describeType(param1);
         _loc6_ = _loc5_.variable;
         _loc2_ = _loc3_ + "{";
         var _loc10_:int = 0;
         while(_loc10_ < _loc6_.length())
         {
            _loc8_ = _loc6_[_loc10_].@name;
            _loc4_ = getQualifiedClassName(param1[_loc8_]).replace("::",".");
            if(_loc4_ == "Array")
            {
               _loc2_ = _loc2_ + (_loc8_ + ":" + getArrayLogString(param1[_loc8_]) + " ");
            }
            else if(baseType.indexOf(_loc4_) == -1)
            {
               _loc2_ = _loc2_ + (_loc8_ + ":" + getObjectLogString(param1[_loc8_]) + " ");
            }
            else
            {
               _loc2_ = _loc2_ + (_loc8_ + ":" + param1[_loc8_] + " ");
            }
            _loc10_++;
         }
         _loc2_ = _loc2_.slice(0,_loc2_.length - 1);
         _loc2_ = _loc2_ + "}";
         return _loc2_;
      }
      
      private static function getArrayLogString(param1:Array) : String
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         _loc3_ = "[";
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc4_ = param1[_loc5_];
            _loc2_ = getClassName(_loc4_);
            if(_loc2_ == "Array")
            {
               _loc3_ = _loc3_ + (_loc5_ + ":" + getArrayLogString(_loc4_ as Array) + " ");
            }
            else if(baseType.indexOf(_loc2_) == -1)
            {
               _loc3_ = _loc3_ + (_loc5_ + ":" + getObjectLogString(_loc4_) + " ");
            }
            else
            {
               _loc3_ = _loc3_ + (_loc5_ + ":" + _loc4_ + " ");
            }
            _loc5_++;
         }
         _loc3_ = _loc3_ + "]";
         return _loc3_;
      }
      
      private static function getClassName(param1:Object) : String
      {
         var _loc2_:String = null;
         _loc2_ = getQualifiedClassName(param1);
         if(_loc2_.indexOf("::") != -1)
         {
            _loc2_ = _loc2_.substring(_loc2_.indexOf("::") + 2,_loc2_.length);
         }
         return _loc2_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
