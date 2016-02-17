package com.tencent.morefun.naruto.util
{
   public class TimeUtils
   {
      
      private static const weekDayStrs:Array = ["日","一","二","三","四","五","六"];
       
      public function TimeUtils()
      {
         super();
         throw new Error(TimeUtils + " can not be instantiated.");
      }
      
      public static function replace(param1:uint, param2:String = "") : String
      {
         if(param2 == "")
         {
            var param2:String = "YY年MM月DD日 hh时mm分ss秒";
         }
         var _loc3_:Date = new Date();
         var _loc4_:Number = _loc3_.getTimezoneOffset();
         _loc3_.setTime(param1 * 1000 + _loc4_ * 60 * 1000 + 480 * 60 * 1000);
         var _loc5_:int = _loc3_.hours;
         var _loc6_:String = _loc5_ < 10?"0" + _loc5_:String(_loc5_);
         var _loc7_:int = _loc3_.minutes;
         var _loc8_:String = _loc7_ < 10?"0" + _loc7_:String(_loc7_);
         var _loc9_:int = _loc3_.seconds;
         var _loc10_:String = _loc9_ < 10?"0" + _loc9_:String(_loc9_);
         return param2.replace("YY",_loc3_.fullYear).replace("MM",_loc3_.month + 1).replace("DD",_loc3_.date).replace("hh",_loc6_).replace("mm",_loc8_).replace("ss",_loc10_).replace("W",weekDayStrs[_loc3_.day]);
      }
      
      public static function getFullTimeStrCN(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1 * 1000);
         var _loc3_:int = _loc2_.hours;
         var _loc4_:String = _loc3_ < 10?"0" + _loc3_:String(_loc3_);
         var _loc5_:int = _loc2_.minutes;
         var _loc6_:String = _loc5_ < 10?"0" + _loc5_:String(_loc5_);
         var _loc7_:int = _loc2_.seconds;
         var _loc8_:String = _loc7_ < 10?"0" + _loc7_:String(_loc7_);
         var _loc9_:String = _loc2_.fullYear + "年" + (_loc2_.month + 1) + "月" + _loc2_.date + "日 " + _loc4_ + ":" + _loc6_ + ":" + _loc8_;
         return _loc9_;
      }
      
      public static function getStandardDayStr(param1:int) : String
      {
         return int(param1 / 86400).toString();
      }
      
      public static function getStandardTimeStr8(param1:int) : String
      {
         var _loc2_:int = param1 / 3600;
         var _loc3_:int = _loc2_ / 24;
         var _loc4_:int = param1 % 3600 / 60;
         if(_loc3_ > 1)
         {
            _loc2_ = _loc2_ % 24;
            return _loc3_ + "天" + _loc2_ + "小时" + _loc4_ + "分";
         }
         if(_loc2_ > 1)
         {
            return _loc2_ + "小时" + _loc4_ + "分";
         }
         return _loc4_ > 1?_loc4_ + "分":"1分";
      }
      
      public static function getStandardTimeStr7(param1:int) : String
      {
         var _loc4_:* = 0;
         if(param1 <= 0)
         {
            return "已过期";
         }
         var _loc2_:int = param1 / 3600;
         var _loc3_:int = _loc2_ / 24;
         if(_loc3_ < 1)
         {
            if(_loc2_ < 1)
            {
               _loc4_ = param1 % 3600 / 60;
               if(_loc4_ > 0)
               {
                  return _loc4_ + "分";
               }
               return "1分";
            }
            return _loc2_ + "时";
         }
         return _loc3_ + "天";
      }
      
      public static function getStandardTimeStr6(param1:int) : String
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(param1 <= 0)
         {
            return "已过期";
         }
         var _loc2_:int = param1 / 3600;
         var _loc3_:int = _loc2_ / 24;
         if(_loc3_ < 1)
         {
            _loc4_ = param1 % 3600 / 60;
            if(_loc2_ < 1 && _loc4_ < 1)
            {
               _loc5_ = param1 % 60;
               _loc6_ = _loc5_ < 10?"0" + _loc5_:String(_loc5_);
               return "0分" + _loc6_ + "秒";
            }
            _loc7_ = _loc4_ < 10?"0" + _loc4_:String(_loc4_);
            return _loc2_ + "小时" + _loc7_ + "分";
         }
         return _loc3_ + "天";
      }
      
      public static function getStandardDay(param1:int) : int
      {
         var _loc2_:int = param1 / 3600;
         var _loc3_:int = _loc2_ / 24;
         return _loc3_;
      }
      
      public static function getStandardTimeStr5(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:int = _loc2_.hours;
         var _loc4_:String = _loc3_ < 10?"0" + _loc3_:String(_loc3_);
         var _loc5_:int = _loc2_.minutes;
         var _loc6_:String = _loc5_ < 10?"0" + _loc5_:String(_loc5_);
         var _loc7_:int = _loc2_.seconds;
         var _loc8_:String = _loc7_ < 10?"0" + _loc7_:String(_loc7_);
         return _loc2_.fullYear + "/" + (_loc2_.month + 1) + "/" + _loc2_.date + " " + _loc4_ + ":" + _loc6_ + ":" + _loc8_;
      }
      
      public static function getStandardTimeStr4(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:int = _loc2_.hours;
         var _loc4_:String = _loc3_ < 10?"0" + _loc3_:String(_loc3_);
         var _loc5_:int = _loc2_.minutes;
         var _loc6_:String = _loc5_ < 10?"0" + _loc5_:String(_loc5_);
         var _loc7_:int = _loc2_.seconds;
         var _loc8_:String = _loc7_ < 10?"0" + _loc7_:String(_loc7_);
         var _loc9_:String = _loc2_.month + 1 + "月" + _loc2_.date + "日 " + _loc4_ + ":" + _loc6_ + ":" + _loc8_;
         return _loc9_;
      }
      
      public static function getStandardTimeStr3(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:int = _loc2_.hours;
         var _loc4_:String = _loc3_ < 10?"0" + _loc3_:String(_loc3_);
         var _loc5_:int = _loc2_.minutes;
         var _loc6_:String = _loc5_ < 10?"0" + _loc5_:String(_loc5_);
         return _loc2_.fullYear + "年" + (_loc2_.month + 1) + "月" + _loc2_.date + "日 " + _loc4_ + ":" + _loc6_;
      }
      
      public static function getStandardTimeStr2(param1:int) : String
      {
         var _loc2_:int = param1 / 3600;
         var _loc3_:String = _loc2_ < 10?"0" + _loc2_:String(_loc2_);
         var _loc4_:int = param1 % 3600 / 60;
         var _loc5_:String = _loc4_ < 10?"0" + _loc4_:String(_loc4_);
         var _loc6_:int = param1 % 60;
         var _loc7_:String = _loc6_ < 10?"0" + _loc6_:String(_loc6_);
         return _loc3_ + "时" + _loc5_ + "分" + _loc6_ + "秒";
      }
      
      public static function getStandardTimeStr(param1:int) : String
      {
         var _loc2_:int = param1 / 3600;
         var _loc3_:String = _loc2_ < 10?"0" + _loc2_:String(_loc2_);
         var _loc4_:int = param1 % 3600 / 60;
         var _loc5_:String = _loc4_ < 10?"0" + _loc4_:String(_loc4_);
         var _loc6_:int = param1 % 60;
         var _loc7_:String = _loc6_ < 10?"0" + _loc6_:String(_loc6_);
         return _loc3_ + ":" + _loc5_ + ":" + _loc7_;
      }
      
      public static function getMinutesAndSeconds(param1:int) : String
      {
         var _loc2_:int = param1 / 60;
         var _loc3_:String = _loc2_ < 10?"0" + _loc2_:String(_loc2_);
         var _loc4_:int = param1 % 60;
         var _loc5_:String = _loc4_ < 10?"0" + _loc4_:String(_loc4_);
         return _loc3_ + ":" + _loc5_;
      }
      
      public static function getStandardDateStr(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1);
         return _loc2_.fullYear + "-" + (_loc2_.month + 1) + "-" + _loc2_.date;
      }
      
      public static function compare(param1:String, param2:String, param3:String = "") : int
      {
         var _loc4_:* = 0;
         if(param3 == "")
         {
            var param3:String = "YY年MM月DD日 hh时mm分ss秒";
         }
         if(param3.indexOf("YY") != -1)
         {
            _loc4_ = compareNum(param1,param2,"YY",param3);
            if(_loc4_ != 0)
            {
               return _loc4_;
            }
         }
         if(param3.indexOf("MM") != -1)
         {
            _loc4_ = compareNum(param1,param2,"MM",param3);
            if(_loc4_ != 0)
            {
               return _loc4_;
            }
         }
         if(param3.indexOf("DD") != -1)
         {
            _loc4_ = compareNum(param1,param2,"DD",param3);
            if(_loc4_ != 0)
            {
               return _loc4_;
            }
         }
         if(param3.indexOf("hh") != -1)
         {
            _loc4_ = compareNum(param1,param2,"hh",param3);
            if(_loc4_ != 0)
            {
               return _loc4_;
            }
         }
         if(param3.indexOf("mm") != -1)
         {
            _loc4_ = compareNum(param1,param2,"mm",param3);
            if(_loc4_ != 0)
            {
               return _loc4_;
            }
         }
         if(param3.indexOf("ss") != -1)
         {
            _loc4_ = compareNum(param1,param2,"ss",param3);
            if(_loc4_ != 0)
            {
               return _loc4_;
            }
         }
         return 0;
      }
      
      private static function compareNum(param1:String, param2:String, param3:String, param4:String) : int
      {
         var _loc5_:int = findNum(param1,param3,param4);
         var _loc6_:int = findNum(param2,param3,param4);
         if(_loc5_ > _loc6_)
         {
            return 1;
         }
         if(_loc5_ < _loc6_)
         {
            return -1;
         }
         return 0;
      }
      
      private static function findNum(param1:String, param2:String, param3:String) : int
      {
         var _loc4_:int = param3.indexOf(param2);
         if(_loc4_ == -1)
         {
            throw new ArgumentError("arguments error");
         }
         return int(param1.substr(_loc4_,param2.length));
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
