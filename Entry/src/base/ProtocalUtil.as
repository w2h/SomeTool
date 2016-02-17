package base
{
   import com.tencent.morefun.naruto.base.interfaces.ISocketServer;
   import flash.utils.Dictionary;
   import com.netease.protobuf.Message;
   import serverProto.inc.EmptyMessage;
   import server.SocketProtocol;
   import cardPackage.command.ShowChargeBoxCommand;
   import ui.command.ShowTextBoxCommand;
   import com.tencent.morefun.naruto.util.GameTip;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.naruto.base.interfaces.INarutoServer;
   
   public class ProtocalUtil
   {
      
      public static var instance:base.ProtocalUtil = new base.ProtocalUtil();
       
      private var _gameServer:ISocketServer;
      
      private var _callDict:Dictionary;
      
      public function ProtocalUtil()
      {
         this._callDict = new Dictionary();
         super();
         this._gameServer = (Facade.getInstance().retrievePlugin("server.INarutoServer") as INarutoServer).socketConnecter as ISocketServer;
      }
      
      public function sendMessage(param1:uint, param2:Message, param3:Message = null, param4:Object = null, param5:Boolean = true, param6:int = 0) : void
      {
         if(!param2)
         {
            var param2:Message = new EmptyMessage();
         }
         this._gameServer.sendMessage(param1,param2,param3,param4,param5,param6);
      }
      
      public function sendMessageAndRsp(param1:uint, param2:Message, param3:Class, param4:Function = null, param5:Object = null, param6:Boolean = true, param7:int = 0, param8:Boolean = true, param9:int = 0) : void
      {
         if(!param2)
         {
            var param2:Message = new EmptyMessage();
         }
         if(param4 != null)
         {
            this.addMassage(param1,param3,param4,param6,param7);
         }
         this._gameServer.sendMessage(param1,param2,new param3() as Message,param5,param8,param9);
      }
      
      public function addMessageRsp(param1:uint, param2:Class, param3:Function, param4:Boolean = true, param5:int = 0) : void
      {
         this.addMassage(param1,param2,param3,param4,param5);
      }
      
      public function removeMessage(param1:int, param2:Function) : void
      {
         if(this._callDict[param2])
         {
            this._gameServer.removeProtocolListener(param1,this._callDict[param2]);
            delete this._callDict[param2];
         }
      }
      
      private function addMassage(param1:uint, param2:Class, param3:Function = null, param4:Boolean = false, param5:int = 0) : void
      {
         var cmdID:uint = param1;
         var msg:Class = param2;
         var callback:Function = param3;
         var isBusy:Boolean = param4;
         var errorType:int = param5;
         var callFunc:Function = function massageCallBack(param1:SocketProtocol):void
         {
            _gameServer.removeProtocolListener(cmdID,arguments.callee);
            delete _callDict[callback];
            if(errorType == 2)
            {
               callback(param1);
               return;
            }
            if(param1.error)
            {
               if(param1.error == -7)
               {
                  new ShowChargeBoxCommand().call();
                  return;
               }
               if(errorType == 0 && param1.errorStr)
               {
                  new ShowTextBoxCommand(param1.errorStr).call();
               }
               else if(errorType == 1)
               {
                  GameTip.show(param1.errorStr);
               }
               return;
            }
            if(callback != null)
            {
               if(param1.clientData == null)
               {
                  callback(param1.serverMessage);
               }
               else
               {
                  callback(param1.serverMessage,param1.clientData);
               }
            }
         };
         this._callDict[callback] = callFunc;
         this._gameServer.registerMessage(cmdID,msg);
         this._gameServer.addProtocolListener(cmdID,callFunc);
         if(isBusy)
         {
            this._gameServer.registerBusy(cmdID,true);
         }
      }
   }
}
