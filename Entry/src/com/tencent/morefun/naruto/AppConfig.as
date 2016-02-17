package com.tencent.morefun.naruto
{
   public class AppConfig
   {
      
      protected static var config:XML;
      
      private static var _configVariables:Object;
       
      public function AppConfig()
      {
         super();
      }
      
      public static function getConfig() : XML
      {
         return AppConfig.config;
      }
      
      public static function setConfig(param1:XML) : void
      {
         AppConfig.config = param1;
      }
      
      public static function get uin() : uint
      {
         return config.uin;
      }
      
      public static function set uin(param1:uint) : void
      {
         config.uin = param1;
      }
      
      public static function get key() : String
      {
         return config.key;
      }
      
      public static function get inviteTag() : String
      {
         return config.new_qz_inviteuin;
      }
      
      public static function get width() : Number
      {
         return config.width;
      }
      
      public static function get height() : Number
      {
         return config.height;
      }
      
      public static function get api() : XML
      {
         return config.api[0];
      }
      
      public static function get socketServer() : XML
      {
         return config.socket[0];
      }
      
      public static function get connectionType() : uint
      {
         return config.connectionType;
      }
      
      public static function get platform() : String
      {
         return config.platform;
      }
      
      public static function get debugMode() : Boolean
      {
         return uint(config.debugMode) == 1;
      }
      
      public static function get logTrace() : Boolean
      {
         return uint(config.logTrace) == 1;
      }
      
      public static function get version() : String
      {
         return config.version;
      }
      
      public static function get configVariables() : Object
      {
         var _loc1_:uint = 0;
         var _loc2_:XML = null;
         if(!_configVariables)
         {
            _configVariables = {};
            _loc1_ = 0;
            while(_loc1_ < config.configVariables.variable.length())
            {
               _loc2_ = config.configVariables.variable[_loc1_];
               _configVariables[_loc2_.@name] = _loc2_.text();
               _loc1_++;
            }
         }
         return _configVariables;
      }
      
      public static function get vipName() : String
      {
         return ["","黄钻","黄钻","蓝钻","","","蓝钻","","","","","","","","","会员"][uint(platform)];
      }
      
      public static function get showPinkVip() : Boolean
      {
         return [0,1,2,undefined,4,5,undefined,7,8,9,10,11,12,13,14,15].indexOf(uint(platform)) != -1;
      }
      
      public static function get showYellowVip() : Boolean
      {
         return [1,2].indexOf(uint(platform)) != -1;
      }
      
      public static function get showBlueVip() : Boolean
      {
         return [3,6].indexOf(uint(platform)) != -1;
      }
      
      public static function get showQqVip() : Boolean
      {
         return [15].indexOf(uint(platform)) != -1;
      }
      
      public function autoSetNull() : void
      {
         config = null;
         _configVariables = null;
      }
   }
}
