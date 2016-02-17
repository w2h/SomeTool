package com.tencent.morefun.naruto.util.ext
{
   public class ToolKit
   {
      
      private static const ZEROS:String = "0000000000";
       
      public function ToolKit()
      {
         super();
      }
      
      public static function paserTime(param1:uint) : Date
      {
         var _loc2_:Date = new Date(param1 * 1000);
         return _loc2_;
      }
      
      public static function parseSecond2Date(param1:uint) : String
      {
         var _loc2_:Date = new Date(param1 * 1000);
         var _loc3_:Number = _loc2_.getUTCFullYear();
         var _loc4_:Number = _loc2_.getUTCMonth() + 1;
         var _loc5_:Number = _loc2_.getUTCDate();
         var _loc6_:Number = _loc2_.getHours();
         var _loc7_:Number = _loc2_.getMinutes();
         var _loc8_:Number = _loc2_.getSeconds();
         return _loc3_ + "-" + _loc4_ + "-" + _loc5_ + " " + _loc6_ + ":" + _loc7_ + ":" + _loc8_;
      }
      
      public static function parseString2Time(param1:String) : Number
      {
         var _loc2_:Array = param1.split(" ");
         _loc2_[0] = _loc2_[0].replace(new RegExp("-","g"),"/");
         var _loc3_:Array = _loc2_[0].split("/");
         var _loc4_:Array = _loc2_[1].split(":");
         var _loc5_:Date = new Date(int(_loc3_[0]),int(_loc3_[1]) - 1,int(_loc3_[2]),int(_loc4_[0]),int(_loc4_[1]),int(_loc4_[2]));
         return _loc5_.time;
      }
      
      public static function getDate() : String
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.getUTCFullYear();
         var _loc3_:Number = _loc1_.getUTCMonth() + 1;
         var _loc4_:Number = _loc1_.getUTCDate();
         var _loc5_:Number = _loc1_.getHours();
         var _loc6_:Number = _loc1_.getMinutes();
         var _loc7_:Number = _loc1_.getSeconds();
         return _loc2_ + "-" + _loc3_ + "-" + _loc4_ + " " + _loc5_ + ":" + _loc6_ + ":" + _loc7_;
      }
      
      public static function formatStringToDate(param1:String) : Date
      {
         var _loc2_:Array = param1.split(" ",2);
         var _loc3_:Array = _loc2_[0].split("-",3);
         var _loc4_:Array = _loc2_[1].split(":",3);
         return new Date(Number(_loc3_[0]),Number(_loc3_[1]) - 1,Number(_loc3_[2]),Number(_loc4_[0]),Number(_loc4_[1]),Number(_loc4_[2]));
      }
      
      public static function formatTimeToString(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         _loc2_.setTime(param1);
         var _loc3_:String = _loc2_.minutes < 10?"0" + _loc2_.minutes.toString():_loc2_.minutes.toString();
         var _loc4_:String = _loc2_.seconds < 10?"0" + _loc2_.seconds.toString():_loc2_.seconds.toString();
         return _loc3_ + ":" + _loc4_;
      }
      
      public static function getFormatDate(param1:Number = 0, param2:String = "YMDhmsS") : String
      {
         var _loc3_:Date = new Date();
         if(param1 > 0)
         {
            _loc3_.setTime(param1);
         }
         var _loc4_:Number = _loc3_.getFullYear();
         var _loc5_:Number = _loc3_.getMonth() + 1;
         var _loc6_:Number = _loc3_.getDate();
         var _loc7_:Number = _loc3_.getHours();
         var _loc8_:Number = _loc3_.getMinutes();
         var _loc9_:Number = _loc3_.getSeconds();
         var _loc10_:Number = _loc3_.getMilliseconds();
         var _loc11_:String = "";
         if(param2.indexOf("Y") >= 0)
         {
            _loc11_ = _loc11_ + _loc4_;
         }
         if(param2.indexOf("M") >= 0)
         {
            _loc11_ = _loc11_ + ((param2.indexOf("Y") >= 0?"-":"") + add0(_loc5_));
         }
         if(param2.indexOf("D") >= 0)
         {
            _loc11_ = _loc11_ + ("-" + add0(_loc6_));
         }
         if(param2.indexOf("h") >= 0)
         {
            _loc11_ = _loc11_ + (" " + add0(_loc7_));
         }
         if(param2.indexOf("m") >= 0)
         {
            _loc11_ = _loc11_ + ((param2.indexOf("h") >= 0?":":"") + add0(_loc8_));
         }
         if(param2.indexOf("s") >= 0)
         {
            _loc11_ = _loc11_ + ((param2.indexOf("m") >= 0?":":"") + add0(_loc9_));
         }
         if(param2.indexOf("S") >= 0)
         {
            _loc11_ = _loc11_ + ((param2.indexOf("s") >= 0?".":"") + add0(_loc10_,3));
         }
         return _loc11_;
      }
      
      public static function add0(param1:Number, param2:int = 2) : String
      {
         var _loc3_:String = null;
         var _loc4_:* = 0;
         if(param2 == 2)
         {
            return (param1 > 9?"":"0") + param1;
         }
         _loc3_ = param1 + "";
         _loc4_ = param2 - _loc3_.length;
         if(_loc4_ > 0)
         {
            return ZEROS.substr(0,_loc4_) + _loc3_;
         }
         return _loc3_;
      }
      
      public static function second2Time(param1:uint) : String
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(param1 >= 60 && param1 < 3600)
         {
            _loc2_ = int(param1 / 60);
            var param1:uint = param1 % 60;
            return _loc2_.toString() + "分" + param1.toString() + "秒";
         }
         if(param1 > 3600)
         {
            _loc3_ = int(param1 / 3600);
            _loc2_ = int((param1 - _loc3_ * 3600) / 60);
            param1 = param1 - 3600 * _loc3_ - 60 * _loc2_;
            return _loc3_.toString() + "小时" + _loc2_.toString() + "分" + param1.toString() + "秒";
         }
         return param1.toString() + "秒";
      }
      
      public static function second2Date(param1:uint, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc8_:uint = 0;
         var _loc5_:Boolean = !param2 && param3;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(param1 < 60)
         {
            if(param2)
            {
               if(param4)
               {
                  return padding(param1) + "秒";
               }
               return param1 + "秒";
            }
            return "";
         }
         if(param1 < 3600)
         {
            _loc6_ = int(param1 / 60);
            var param1:uint = param1 % 60;
            _loc6_ = _loc6_ + (param1 > 0 && _loc5_?1:0);
            if(param4)
            {
               return padding(_loc6_) + "分" + (param2?padding(param1) + "秒":"");
            }
            return _loc6_ + "分" + (param2?param1 + "秒":"");
         }
         if(param1 < 24 * 3600)
         {
            _loc7_ = int(param1 / 3600);
            _loc6_ = int((param1 - _loc7_ * 3600) / 60);
            param1 = param1 - 3600 * _loc7_ - 60 * _loc6_;
            _loc6_ = _loc6_ + (param1 > 0 && _loc5_?1:0);
            if(param4)
            {
               return padding(_loc7_) + "时" + padding(_loc6_) + "分" + (param2?padding(param1) + "秒":"");
            }
            return _loc7_ + "时" + _loc6_ + "分" + (param2?param1 + "秒":"");
         }
         _loc8_ = int(param1 / 24 / 3600);
         _loc7_ = int((param1 - _loc8_ * 3600 * 24) / 3600);
         _loc6_ = int((param1 - _loc8_ * 3600 * 24 - _loc7_ * 3600) / 60);
         param1 = param1 - _loc8_ * 3600 * 24 - _loc7_ * 3600 - _loc6_ * 60;
         _loc6_ = _loc6_ + (param1 > 0 && _loc5_?1:0);
         if(param4)
         {
            return _loc8_ + "天" + padding(_loc7_) + "时" + padding(_loc6_) + "分" + (param2?padding(param1) + "秒":"");
         }
         return _loc8_ + "天" + _loc7_ + "时" + _loc6_ + "分" + (param2?param1 + "秒":"");
      }
      
      public static function padding(param1:int) : String
      {
         var _loc2_:String = param1.toString();
         return _loc2_.length == 1?"0" + _loc2_:_loc2_;
      }
      
      public static function getTimeArr(param1:Number) : Array
      {
         if(param1 < 0)
         {
            var param1:Number = 0;
         }
         var _loc2_:int = param1 / 60 / 60 >> 0;
         var _loc3_:int = param1 / 60 % 60;
         var _loc4_:int = param1 % 60;
         return [_loc2_,_loc3_,_loc4_];
      }
      
      public static function secToString(param1:int) : String
      {
         var _loc2_:Date = new Date(param1 * 1000);
         return _loc2_.fullYear + "年" + (_loc2_.month + 1) + "月" + _loc2_.date + "日";
      }
      
      public static function getPaddingNumStr(param1:int, param2:int) : String
      {
         var _loc3_:String = "0000000000" + param1;
         return _loc3_.substr(_loc3_.length - param2,param2);
      }
      
      public static function Vector2Array(param1:*, param2:uint) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_[_loc4_] = param1[_loc4_];
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function getMoneyString(param1:uint) : String
      {
         var _loc2_:String = "" + param1;
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = Math.ceil(_loc3_ / 3);
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_ - 1)
         {
            _loc5_.unshift(_loc2_.substr(_loc3_ - (1 + _loc6_) * 3,3));
            _loc6_++;
         }
         _loc5_.unshift(_loc2_.substr(0,3 - (_loc4_ * 3 - _loc3_)));
         return _loc5_.join(",");
      }
      
      public static function isTrueInLine(param1:uint, param2:uint) : Boolean
      {
         return (param1 & param2) != 0;
      }
      
      public static function isTrueAtPos(param1:uint, param2:uint) : Boolean
      {
         return (param1 >> param2 & 1) == 1;
      }
      
      public static function setTrueAtPos(param1:uint, param2:uint, param3:Boolean) : uint
      {
         if(isTrueAtPos(param1,param2) == param3)
         {
            return param1;
         }
         return param1 ^ 1 << param2;
      }
      
      public static function getPingColor(param1:uint) : uint
      {
         if(param1 == 0)
         {
            return 13421772;
         }
         if(param1 < 200)
         {
            return 65280;
         }
         if(param1 < 600)
         {
            return 13434624;
         }
         if(param1 < 1200)
         {
            return 16737792;
         }
         return 16711680;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
