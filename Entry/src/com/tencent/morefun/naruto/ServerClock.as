package com.tencent.morefun.naruto
{
   public class ServerClock
   {
      
      public static var offest:Number = 0;
       
      public function ServerClock()
      {
         super();
      }
      
      public static function setServerTime(param1:Number) : void
      {
         offest = param1 - getClientTime();
      }
      
      public static function getClientTime() : Number
      {
         return new Date().getTime();
      }
      
      public static function getServerTime() : Number
      {
         return getClientTime() + offest;
      }
      
      public static function getServerMinute() : int
      {
         return getServerTime() / (1000 * 60);
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
