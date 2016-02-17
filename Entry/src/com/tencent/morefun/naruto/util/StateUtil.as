package com.tencent.morefun.naruto.util
{
   import flash.utils.Dictionary;
   
   public class StateUtil
   {
      
      private static var binit:Boolean;
      
      private static var uintFlagMap:Dictionary = new Dictionary();
      
      private static var numberFlagMap:Dictionary = new Dictionary();
       
      public function StateUtil()
      {
         super();
      }
      
      private static function init() : void
      {
         var _loc1_:* = 0;
         if(binit)
         {
            return;
         }
         binit = true;
         _loc1_ = 1;
         while(_loc1_ <= 32)
         {
            uintFlagMap[_loc1_] = Math.pow(2,_loc1_ - 1);
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ <= 64)
         {
            numberFlagMap[_loc1_] = Math.pow(2,_loc1_ - 1);
            _loc1_++;
         }
      }
      
      public static function checkUintFlag(param1:uint, param2:int) : Boolean
      {
         var _loc3_:uint = 0;
         init();
         _loc3_ = uintFlagMap[param2];
         return (param1 & _loc3_) != 0;
      }
      
      public static function checkNumberFlag(param1:Number, param2:int) : Boolean
      {
         var _loc3_:uint = 0;
         init();
         _loc3_ = numberFlagMap[param2];
         return (param1 & _loc3_) != 0;
      }
      
      public static function checkStringFlag(param1:String, param2:int) : Boolean
      {
         if(param1.length < param2)
         {
            throw new Error("state flag length is invaild");
         }
         return param1.charAt(param2) != "0";
      }
      
      public static function changeUintFlag(param1:uint, param2:int, param3:Boolean) : uint
      {
         var _loc4_:uint = 0;
         init();
         _loc4_ = uintFlagMap[param2];
         if(param3 == true)
         {
            var param1:uint = param1 | _loc4_;
         }
         else
         {
            param1 = (_loc4_ ^ 4.294967295E9) & param1;
         }
         return param1;
      }
      
      public static function changeNumberFlag(param1:Number, param2:int, param3:Boolean) : Number
      {
         var _loc4_:* = NaN;
         init();
         _loc4_ = numberFlagMap[param2];
         if(param3 == true)
         {
            var param1:Number = param1 | _loc4_;
         }
         else
         {
            param1 = (_loc4_ ^ 1.8446744073709552E19) & param1;
         }
         return param1;
      }
      
      public static function changeStringFlag(param1:String, param2:int, param3:Boolean) : String
      {
         var _loc4_:String = null;
         _loc4_ = param3 == true?"1":"0";
         if(param1.length < param2)
         {
            throw new Error("state flag length is invaild");
         }
         var param1:String = param1.substring(0,param2) + _loc4_ + param1.substring(param2 + 1,param1.length);
         return param1;
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(uintFlagMap,"autoDestroy");
         uintFlagMap = null;
         CollectionClearUtil.clearDictionary(numberFlagMap,"autoDestroy");
         numberFlagMap = null;
         uintFlagMap = null;
         numberFlagMap = null;
      }
   }
}
