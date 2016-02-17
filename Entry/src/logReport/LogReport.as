package logReport
{
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import base.ApplicationData;
   import flash.net.URLRequestMethod;
   import flash.net.URLLoader;
   import flash.events.Event;
   import flash.events.SecurityErrorEvent;
   import flash.events.IOErrorEvent;
   import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
   import com.tencent.morefun.framework.log.logger;
   
   public class LogReport
   {
      
      private static var callbackMap:Dictionary = new Dictionary();
       
      public function LogReport()
      {
         super();
      }
      
      public static function report(param1:String, param2:ByteArray, param3:Function) : void
      {
         var _loc4_:MultiPartFormData = null;
         var _loc5_:URLRequest = null;
         var _loc6_:URLRequestHeader = null;
         _loc4_ = new MultiPartFormData();
         _loc4_.AddFormField("path","");
         _loc4_.AddFormField("dir","client_report");
         _loc4_.AddFormField("press","Upload");
         _loc4_.AddStreamFile("file",param1 + "_" + ApplicationData.singleton.selfuin + getDate() + ".blog",param2);
         _loc4_.PrepareFormData();
         _loc5_ = new URLRequest("http://clientcrash.huoying.qq.com/cgi-bin/upload.pl");
         _loc6_ = new URLRequestHeader("Content-Type","multipart/form-data; boundary=" + MultiPartFormData.Boundary);
         _loc5_.requestHeaders.push(_loc6_);
         _loc5_.method = URLRequestMethod.POST;
         _loc5_.data = _loc4_.GetFormData();
         var _loc7_:URLLoader = new URLLoader();
         _loc7_.addEventListener(Event.COMPLETE,onReportComplete);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onReportError);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,onReportError);
         _loc7_.load(_loc5_);
         TimerProvider.addTimeTask(1000 * 60,onTimeOut,_loc7_,0,0,1);
         callbackMap[_loc7_] = param3;
      }
      
      private static function getDate() : String
      {
         var _loc1_:Date = new Date();
         return "_" + getPeddingNum(_loc1_.getFullYear()) + getPeddingNum(_loc1_.getMonth() + 1) + getPeddingNum(_loc1_.getDate()) + "_" + getPeddingNum(_loc1_.getHours()) + ":" + getPeddingNum(_loc1_.getMinutes()) + ":" + getPeddingNum(_loc1_.getSeconds());
      }
      
      private static function getPeddingNum(param1:int) : String
      {
         if(param1 < 10)
         {
            return "0" + param1;
         }
         return param1.toString();
      }
      
      private static function onTimeOut(param1:URLLoader) : void
      {
         var _loc2_:Function = null;
         _loc2_ = callbackMap[param1];
         _loc2_();
         logger.output("[LogReport][onTimeOut]");
      }
      
      private static function onReportComplete(param1:Event) : void
      {
         var _loc2_:Function = null;
         TimerProvider.removeEnterFrameTask(onTimeOut,param1.currentTarget,0);
         _loc2_ = callbackMap[param1.currentTarget];
         _loc2_();
         logger.output("[LogReport][onReportComplete]");
      }
      
      private static function onReportError(param1:Event) : void
      {
         logger.output("[LogReport][onReportError]");
      }
   }
}
