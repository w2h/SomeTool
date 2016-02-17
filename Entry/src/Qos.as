package
{
   import com.tencent.morefun.naruto.qos.QosReport.QosType;
   import com.tencent.morefun.naruto.qos.QosReport.ElapsedTimeType;
   
   public class Qos
   {
      
      public static var traceEnabled:Boolean = true;
      
      public static var host:String = "ied-tqosweb.qq.com:8001";
      
      public static var enabled:Boolean = true;
      
      public static var version:String = "null";
      
      public static var sys:String = "nul";
      
      public static var platform:String = "null";
      
      public static var source:uint = 0;
      
      public static var flashplayer:String = "null";
      
      public static var loginedTimes:uint = 0;
      
      public static var registeredDays:uint = 0;
      
      public static var registeredDay:String = "";
      
      public static var isDebug:uint = 0;
      
      public static var uin:uint = 0;
      
      public static var level:uint = 0;
      
      public static var fightingCapacity:uint = 0;
      
      protected static var major:uint = 0;
      
      protected static var minor:uint = 0;
       
      public function Qos()
      {
         super();
      }
      
      public static function log(param1:uint, param2:uint, param3:uint, param4:uint, param5:String, param6:String) : void
      {
         _log(param1,param2,param3,param4,param5,param6);
      }
      
      private static function _log(param1:uint, param2:uint, param3:uint, param4:uint, param5:String, param6:String) : void
      {
         var _loc8_:String = null;
         var _loc9_:Array = null;
         if(!enabled)
         {
            return;
         }
         if(Qos.traceEnabled)
         {
         }
         if(major == 0 && minor == 0)
         {
            sys = flashplayer.substr(0,3);
            _loc8_ = flashplayer.replace(new RegExp("[a-z]","gi"),"");
            _loc9_ = _loc8_.split(",");
            major = uint(_loc9_[0]);
            minor = uint(_loc9_[1]);
         }
         var _loc7_:Tqos = new Tqos();
         _loc7_.intList.push(uin);
         _loc7_.intList.push(level);
         _loc7_.intList.push(uint(platform));
         _loc7_.intList.push(major);
         _loc7_.intList.push(isDebug);
         _loc7_.intList.push(source);
         _loc7_.intList.push(fightingCapacity);
         _loc7_.intList.push(loginedTimes);
         _loc7_.intList.push(registeredDays);
         _loc7_.intList.push(0);
         _loc7_.intList.push(param1);
         _loc7_.intList.push(param2);
         _loc7_.intList.push(param3);
         _loc7_.intList.push(param4);
         _loc7_.strList.push(replaceStr(major + "." + minor));
         _loc7_.strList.push(replaceStr(version));
         _loc7_.strList.push(replaceStr(flashplayer));
         _loc7_.strList.push(sys);
         _loc7_.strList.push(registeredDay);
         _loc7_.strList.push(replaceStr(param5 || "null"));
         _loc7_.strList.push(replaceStr(param6 || "null"));
         _loc7_.sendTqos();
      }
      
      private static function replaceStr(param1:String) : String
      {
         var param1:String = param1.replace(new RegExp("\\,","gi"),"_");
         param1 = param1.replace(new RegExp("\\[","gi"),"_");
         param1 = param1.replace(new RegExp("\\]","gi"),"_");
         param1 = param1.replace(new RegExp("\\{","gi"),"_");
         param1 = param1.replace(new RegExp("\\}","gi"),"_");
         param1 = param1.replace(new RegExp("\\|","gi"),"_");
         param1 = param1.replace(new RegExp("\\\'","gi"),"_");
         param1 = param1.replace(new RegExp("\\\"","gi"),"_");
         param1 = param1.replace(new RegExp("\\:","gi"),"_");
         param1 = param1.replace(new RegExp("\\r","gi"),"");
         param1 = param1.replace(new RegExp("\\n","gi"),"");
         return param1;
      }
      
      public static function loadBegin() : void
      {
         log(QosType.QOS_CLIENT_LOAD_ELAPSED_TIME,ElapsedTimeType.LOAD_BEGIN,0,0,null,null);
      }
      
      public static function loadComplete(param1:uint) : void
      {
         log(QosType.QOS_CLIENT_LOAD_ELAPSED_TIME,ElapsedTimeType.LOAD_COMPLETE,param1,0,null,null);
      }
      
      public static function loadError(param1:String) : void
      {
      }
      
      public static function pclError(param1:uint, param2:String, param3:uint) : void
      {
      }
      
      public static function elapsed(param1:uint, param2:Number) : void
      {
      }
      
      public static function clientError(param1:uint, param2:String) : void
      {
      }
      
      public static function behavior(param1:uint, param2:uint, param3:uint, param4:String, param5:String) : void
      {
      }
      
      public static function info() : void
      {
      }
      
      public static function fightElapsed(param1:Number, param2:uint, param3:uint) : void
      {
      }
      
      public static function commandElapsed(param1:Number, param2:String) : void
      {
      }
      
      public static function pclElapsed(param1:Number, param2:uint) : void
      {
      }
      
      public static function actClick(param1:uint) : void
      {
      }
      
      public static function gameClick(param1:int, param2:int) : void
      {
      }
      
      public static function loginTimes(param1:uint) : void
      {
         if(param1 > 1)
         {
            return;
         }
      }
      
      public static function buy(param1:int, param2:int) : void
      {
      }
   }
}
