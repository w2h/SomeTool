package com.tencent.morefun.naruto.base.interfaces
{
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   import com.netease.protobuf.Message;
   
   [Event(name="open",type="flash.events.Event")]
   public interface ISocketServer extends IEventDispatcher
   {
       
      function registerBusy(param1:uint, param2:Boolean, param3:Boolean = false) : void;
      
      function registerTimeoutReLogin(param1:uint) : void;
      
      function registerProtocol(param1:uint, param2:Class) : void;
      
      function registerMessage(param1:uint, param2:Class) : void;
      
      function unregisterMessage(param1:uint) : void;
      
      function registerTimeOut(param1:uint, param2:int) : void;
      
      function regPluginProtocol(param1:uint, param2:String) : void;
      
      function unregPluginProtocol(param1:uint) : void;
      
      function convertBytesToProtocol(param1:int, param2:ByteArray, param3:uint) : void;
      
      function addProtocolListener(param1:uint, param2:Function, param3:uint = 0) : void;
      
      function addIgnoreEncryptProto(param1:uint) : void;
      
      function removeProtocolListener(param1:uint, param2:Function) : void;
      
      function sendTGWInfo() : void;
      
      function sendMessage(param1:uint, param2:Message, param3:Message = null, param4:Object = null, param5:Boolean = true, param6:int = 0) : void;
      
      function sendProtocol(param1:ISocketProtocol, param2:Boolean = true, param3:int = 0) : void;
      
      function clearMessageReco(param1:uint) : void;
      
      function get connected() : Boolean;
      
      function set isPtLogin(param1:Boolean) : void;
      
      function get isPtLogin() : Boolean;
      
      function set defaultProtocol(param1:Class) : void;
      
      function set isEncrypt(param1:Boolean) : void;
      
      function get isEncrypt() : Boolean;
      
      function connectSocket2(param1:String, param2:int, param3:Array, param4:Function, param5:Function) : void;
      
      function get connected2() : Boolean;
      
      function close2() : void;
      
      function stopConn() : void;
   }
}
