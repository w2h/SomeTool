package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   import cardPackage.def.MallTabDef;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent;
   import flash.utils.getTimer;
   import sys.cmd.SysReportCommand;
   import serverProto.system.ProtoReportLogID;
   import sys.def.SysReportMsgDef;
   
   public class OpenCardPackageCommand extends Command
   {
       
      public var data = null;
      
      protected var _openTimestamp:int;
      
      public function OpenCardPackageCommand(param1:* = null)
      {
         super();
         this.data = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
      
      override public function call() : void
      {
         if(this.data == MallTabDef.EQUIP_SHOP || this.data == MallTabDef.PROPS_SHOP || this.data == MallTabDef.LIMIT_SHOP || this.data == MallTabDef.FASHION_SHOP)
         {
            this.addListener();
         }
         super.call();
      }
      
      private function addListener() : void
      {
         Facade.getInstance().commandManager.addEventListener(CommandManagerEvent.COMMAND_LOAD_START,this.onCommandLoadStart);
         Facade.getInstance().commandManager.addEventListener(CommandManagerEvent.COMMAND_LOAD_ERROR,this.onCommandLoadError);
      }
      
      private function removeListener() : void
      {
         Facade.getInstance().commandManager.removeEventListener(CommandManagerEvent.COMMAND_LOAD_START,this.onCommandLoadStart);
         Facade.getInstance().commandManager.removeEventListener(CommandManagerEvent.COMMAND_LOAD_ERROR,this.onCommandLoadError);
      }
      
      protected function onCommandLoadStart(param1:CommandManagerEvent) : void
      {
         this._openTimestamp = getTimer();
      }
      
      protected function onCommandLoadError(param1:CommandManagerEvent) : void
      {
         var _loc2_:SysReportCommand = null;
         if(param1.command == this)
         {
            _loc2_ = new SysReportCommand(ProtoReportLogID.PROTO_REPORT_LOG_ID_SHOP_OPEN_RESULT,SysReportMsgDef.SHOP_LOAD_ERROR);
            _loc2_.call();
            this.removeListener();
         }
      }
      
      override public function finish() : void
      {
         var _loc1_:int = getTimer() - this._openTimestamp;
         var _loc2_:SysReportCommand = new SysReportCommand(ProtoReportLogID.PROTO_REPORT_LOG_ID_SHOP_OPEN_TIME_USED,_loc1_);
         _loc2_.call();
         this.removeListener();
         super.finish();
      }
   }
}
