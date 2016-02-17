package com.tencent.morefun.naruto.fake
{
   import com.tencent.morefun.naruto.base.interfaces.ISocketServer;
   import com.netease.protobuf.Message;
   import flash.utils.ByteArray;
   import com.tencent.morefun.naruto.base.interfaces.ISocketProtocol;
   import flash.events.Event;
   
   public class FakeSocketServer implements ISocketServer
   {
       
      private var _connected:Boolean;
      
      private var _isPtLogin:Boolean;
      
      private var _defaultProtocol:Class;
      
      private var _isEncrypt:Boolean;
      
      private var _connected2:Boolean;
      
      public function FakeSocketServer()
      {
         super();
      }
      
      public function sendMessage(param1:uint, param2:Message, param3:Message = null, param4:Object = null, param5:Boolean = true, param6:int = 0) : void
      {
      }
      
      public function registerBusy(param1:uint, param2:Boolean, param3:Boolean = false) : void
      {
      }
      
      public function registerTimeoutReLogin(param1:uint) : void
      {
      }
      
      public function registerProtocol(param1:uint, param2:Class) : void
      {
      }
      
      public function registerMessage(param1:uint, param2:Class) : void
      {
      }
      
      public function unregisterMessage(param1:uint) : void
      {
      }
      
      public function registerTimeOut(param1:uint, param2:int) : void
      {
      }
      
      public function regPluginProtocol(param1:uint, param2:String) : void
      {
      }
      
      public function unregPluginProtocol(param1:uint) : void
      {
      }
      
      public function convertBytesToProtocol(param1:int, param2:ByteArray, param3:uint) : void
      {
      }
      
      public function addProtocolListener(param1:uint, param2:Function, param3:uint = 0) : void
      {
      }
      
      public function addIgnoreEncryptProto(param1:uint) : void
      {
      }
      
      public function removeProtocolListener(param1:uint, param2:Function) : void
      {
      }
      
      public function sendTGWInfo() : void
      {
      }
      
      public function sendProtocol(param1:ISocketProtocol, param2:Boolean = true, param3:int = 0) : void
      {
      }
      
      public function clearMessageReco(param1:uint) : void
      {
      }
      
      public function get connected() : Boolean
      {
         return this._connected;
      }
      
      public function set isPtLogin(param1:Boolean) : void
      {
         this._isPtLogin = param1;
      }
      
      public function get isPtLogin() : Boolean
      {
         return this._isPtLogin;
      }
      
      public function set defaultProtocol(param1:Class) : void
      {
         this._defaultProtocol = param1;
      }
      
      public function set isEncrypt(param1:Boolean) : void
      {
         this._isEncrypt = param1;
      }
      
      public function get isEncrypt() : Boolean
      {
         return this._isEncrypt;
      }
      
      public function connectSocket2(param1:String, param2:int, param3:Array, param4:Function, param5:Function) : void
      {
      }
      
      public function get connected2() : Boolean
      {
         return this._connected2;
      }
      
      public function close2() : void
      {
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return true;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return true;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return true;
      }
      
      public function stopConn() : void
      {
      }
   }
}
