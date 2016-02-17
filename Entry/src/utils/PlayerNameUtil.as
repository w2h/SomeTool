package utils
{
   import base.ApplicationData;
   import serverProto.inc.ProtoPlayerKey;
   import player.datas.PlayerData;
   import com.netease.protobuf.UInt64;
   
   public class PlayerNameUtil
   {
       
      public function PlayerNameUtil()
      {
         super();
      }
      
      public static function standardlizeName(param1:Object, param2:String, param3:Boolean = false, param4:Boolean = false) : String
      {
         if(param3 && ApplicationData.singleton.hideZoneId)
         {
            return param2;
         }
         var _loc5_:uint = getStandardSeverId(param1);
         if(ApplicationData.singleton.isMergedServer || param4)
         {
            return _loc5_ + "区-" + param2;
         }
         return param2;
      }
      
      public static function standardlizeName2(param1:Object, param2:String) : String
      {
         var _loc3_:uint = getStandardSeverId(param1);
         var _loc4_:String = _loc3_ < 10?"0" + _loc3_:_loc3_.toString();
         return "S" + _loc4_ + " " + param2;
      }
      
      public static function getStandardSeverId(param1:Object) : int
      {
         var _loc2_:uint = 0;
         if(param1 is ProtoPlayerKey)
         {
            _loc2_ = (param1 as ProtoPlayerKey).svrId;
         }
         else if(param1 is PlayerData)
         {
            _loc2_ = (param1 as PlayerData).svrId;
         }
         else
         {
            _loc2_ = int(param1);
         }
         if(_loc2_ > 6000 && _loc2_ < 8000)
         {
            _loc2_ = int(_loc2_ % 6000);
         }
         if(_loc2_ > 8000)
         {
            _loc2_ = int(_loc2_ % 8000);
         }
         return _loc2_;
      }
      
      public static function formatGuildName(param1:UInt64, param2:String, param3:Boolean = false) : String
      {
         if(param1)
         {
            return standardlizeName(param1.high & 65535,param2,param3);
         }
         return param2;
      }
      
      public static function formatGuildName2(param1:UInt64, param2:String) : String
      {
         if(param1)
         {
            return standardlizeName2(param1.high & 65535,param2);
         }
         return param2;
      }
   }
}
