package server.event
{
   import flash.events.Event;
   import com.tencent.morefun.naruto.base.interfaces.ISocketProtocol;
   import flash.utils.ByteArray;
   
   public class SocketServerEvent extends Event
   {
      
      public static const TIME_OUT:String = "timeOut";
      
      public static const BUSY:String = "busy";
      
      public static const BUSY_NO_ICON:String = "busyNoIcon";
      
      public static const LEISURE:String = "leisure";
      
      public static const RECEIVE:String = "receive";
      
      public static const REG_PLUGIN_NOTIFY:String = "regPluginNotify";
      
      public static const CONN_ERROR:String = "connError";
      
      public static const REG_MESSAGE:String = "";
      
      public static const ADD_PROTOCOL_LISTENER:String = "addProtocolListener";
       
      public var protocol:ISocketProtocol;
      
      public var regPluginName:String;
      
      public var regPluginPackageLength:uint;
      
      public var regPluginCommandId:uint;
      
      public var regPluginProtocolBytes:ByteArray;
      
      public var data:Object;
      
      public function SocketServerEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
