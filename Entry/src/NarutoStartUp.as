package
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.framework.net.LoadManager;
   import ui.loading.LoadingView;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.base.Command;
   import com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsLoader;
   import com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent;
   import com.tencent.morefun.framework.net.def.LoaderDef;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo;
   import com.tencent.morefun.framework.base.StartUpEvent;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent;
   import world.command.StartChangeSceneCommand;
   import com.tencent.morefun.framework.base.CommandEvent;
   import flash.events.Event;
   import base.ApplicationData;
   import com.tencent.morefun.framework.base.PluginEvent;
   import rumorPlot.command.RumorPlotPreviewCommand;
   import sys.def.SysReportMsgDef;
   import sys.cmd.SysReportCommand;
   import serverProto.system.ProtoReportLogID;
   
   public class NarutoStartUp extends EventDispatcher
   {
       
      private var _loadingView:LoadingView;
      
      private var _pluginCfg:XML;
      
      private var _facade:Facade;
      
      private var _startUpRelatedCommand:Command;
      
      private var _expectingPercent:int;
      
      public function NarutoStartUp(param1:LoadingView)
      {
         super();
         this._loadingView = param1;
         this._facade = Facade.getInstance();
         this._expectingPercent = 20;
      }
      
      private static function testComplete() : void
      {
         var _loc1_:Number = LoadManager.CURRENT_LOAD_BYTES / (LoadManager.LAST_UPDATE_TIME - LoadManager.START_UPDATE_TIME);
      }
      
      public function startUp(param1:XML) : NarutoStartUp
      {
         var _loc3_:XML = null;
         var _loc4_:NarutoAssetsLoader = null;
         this._pluginCfg = param1;
         this._loadingView.record = this._loadingView.percent;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in this._pluginCfg.plugin.def)
         {
            _loc2_.push(_loc3_.toString());
         }
         _loc4_ = new NarutoAssetsLoader();
         _loc4_.pushAssets(_loc2_);
         _loc4_.addEventListener(NarutoAssetsEvent.ALL_COMPLETE,this.configAllCompleteHandler);
         _loc4_.addEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.pluginCfgCompleteHandler);
         _loc4_.addEventListener(NarutoAssetsEvent.PROGRESS,this.pluginCfgProgressHandler);
         _loc4_.start(LoadManager.getManager(LoaderDef.PLUGIN));
         LoadManager.StartTestSpeed(20000,testComplete);
         return this;
      }
      
      private function pluginCfgProgressHandler(param1:NarutoAssetsEvent) : void
      {
         this._loadingView.percent = this._loadingView.record + 5 / 100 * param1.data;
      }
      
      private function pluginCfgCompleteHandler(param1:NarutoAssetsEvent) : void
      {
         var data:XML = null;
         var def:XML = null;
         var e:NarutoAssetsEvent = param1;
         data = e.data as XML;
         def = this._pluginCfg.plugin.def.(toString() == e.url)[0];
         def.parent().setChildren(data.children());
         this._loadingView.tips = "[" + e.url + "]已完成";
      }
      
      private function configAllCompleteHandler(param1:NarutoAssetsEvent) : void
      {
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc6_:PluginInfo = null;
         var _loc2_:NarutoAssetsLoader = param1.currentTarget as NarutoAssetsLoader;
         _loc2_.removeEventListener(NarutoAssetsEvent.ALL_COMPLETE,this.configAllCompleteHandler);
         _loc2_.removeEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.pluginCfgCompleteHandler);
         _loc2_.removeEventListener(NarutoAssetsEvent.PROGRESS,this.pluginCfgProgressHandler);
         this._facade.pluginManager.setUp(this._pluginCfg);
         var _loc3_:Vector.<PluginInfo> = new Vector.<PluginInfo>();
         for each(_loc4_ in this._pluginCfg.autorun.plugin)
         {
            _loc5_ = _loc4_["interface"];
            _loc6_ = this._facade.pluginManager.getPluginInfo(_loc5_);
            if(_loc6_)
            {
               _loc3_.push(_loc6_);
               continue;
            }
            throw new Error("自启动插件[" + _loc5_ + "]配置不存在!");
         }
         this._loadingView.record = this._loadingView.percent;
         this._facade.addEventListener(StartUpEvent.START_UP,this.startUpHandler);
         this._facade.addEventListener(StartUpEvent.REGISTER,this.registerHandler);
         _loc2_ = new NarutoAssetsLoader();
         _loc2_.pushPlugins(_loc3_);
         _loc2_.addEventListener(NarutoAssetsEvent.ALL_COMPLETE,this.frameworkPluginHandler);
         _loc2_.addEventListener(NarutoAssetsEvent.PROGRESS,this.frameworkPluginHandler);
         _loc2_.addEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.assetCompleteHandler);
         _loc2_.start(LoadManager.getManager(LoaderDef.PLUGIN));
      }
      
      private function assetCompleteHandler(param1:NarutoAssetsEvent) : void
      {
         if(param1.data)
         {
            this._loadingView.tips = "[" + param1.url + "]已完成";
         }
         else
         {
            this._loadingView.errorTips = "[" + param1.url + "]加载失败";
         }
      }
      
      private function registerHandler(param1:StartUpEvent) : void
      {
         var _loc3_:XML = null;
         var _loc4_:NarutoAssetsLoader = null;
         var _loc5_:String = null;
         var _loc6_:PluginInfo = null;
         this._startUpRelatedCommand = param1.relatedCommand;
         var _loc2_:Vector.<PluginInfo> = new Vector.<PluginInfo>();
         for each(_loc3_ in this._pluginCfg.register.plugin)
         {
            _loc5_ = _loc3_["interface"];
            _loc6_ = this._facade.pluginManager.getPluginInfo(_loc5_);
            if(_loc6_)
            {
               _loc2_.push(_loc6_);
               continue;
            }
            throw new Error("启动插件[" + _loc5_ + "]配置不存在!");
         }
         this._loadingView.record = this._loadingView.percent;
         _loc4_ = new NarutoAssetsLoader();
         _loc4_.pushPlugins(_loc2_);
         _loc4_.addEventListener(NarutoAssetsEvent.ALL_COMPLETE,this.registerPluginHandler);
         _loc4_.addEventListener(NarutoAssetsEvent.PROGRESS,this.registerPluginHandler);
         _loc4_.addEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.assetCompleteHandler);
         _loc4_.start(LoadManager.getManager(LoaderDef.PLUGIN));
      }
      
      private function startUpHandler(param1:StartUpEvent) : void
      {
         var _loc3_:XML = null;
         var _loc4_:NarutoAssetsLoader = null;
         var _loc5_:String = null;
         var _loc6_:PluginInfo = null;
         this._startUpRelatedCommand = param1.relatedCommand;
         this._facade.removeEventListener(StartUpEvent.START_UP,this.startUpHandler);
         this._facade.removeEventListener(StartUpEvent.REGISTER,this.registerHandler);
         var _loc2_:Vector.<PluginInfo> = new Vector.<PluginInfo>();
         for each(_loc3_ in this._pluginCfg.startup.plugin)
         {
            _loc5_ = _loc3_["interface"];
            _loc6_ = this._facade.pluginManager.getPluginInfo(_loc5_);
            if(_loc6_)
            {
               _loc2_.push(_loc6_);
               continue;
            }
            throw new Error("启动插件[" + _loc5_ + "]配置不存在!");
         }
         this._loadingView.record = this._loadingView.percent;
         this._loadingView.visible = true;
         _loc4_ = new NarutoAssetsLoader();
         _loc4_.pushPlugins(_loc2_);
         _loc4_.addEventListener(NarutoAssetsEvent.ALL_COMPLETE,this.startUpPluginHandler);
         _loc4_.addEventListener(NarutoAssetsEvent.PROGRESS,this.startUpPluginHandler);
         _loc4_.addEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.assetCompleteHandler);
         _loc4_.start(LoadManager.getManager(LoaderDef.PLUGIN));
      }
      
      private function registerPluginHandler(param1:NarutoAssetsEvent) : void
      {
         var _loc3_:NarutoAssetsLoader = param1.currentTarget as NarutoAssetsLoader;
         if(param1.type == NarutoAssetsEvent.PROGRESS)
         {
            this._loadingView.percent = this._loadingView.record + 3 / 100 * param1.data;
         }
         else if(param1.type == NarutoAssetsEvent.ALL_COMPLETE)
         {
            _loc3_.removeEventListener(NarutoAssetsEvent.ALL_COMPLETE,arguments.callee);
            _loc3_.removeEventListener(NarutoAssetsEvent.PROGRESS,arguments.callee);
            _loc3_.removeEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.assetCompleteHandler);
            this._startUpRelatedCommand.call();
            this._startUpRelatedCommand = null;
            this._loadingView.visible = false;
         }
      }
      
      private function commandHandler(param1:CommandManagerEvent) : void
      {
         this._loadingView.tips = "[正在执行]" + param1.command.getCommandName();
         if(param1.command is StartChangeSceneCommand)
         {
            param1.currentTarget.removeEventListener(param1.type,arguments.callee);
            param1.command.addEventListener(CommandEvent.FINISH,this.gameWorldReadyHandler);
         }
      }
      
      private function gameWorldReadyHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(param1.type,arguments.callee);
         this._loadingView.dispose();
         this._loadingView = null;
      }
      
      private function startUpCompleteHandler(param1:StartUpEvent) : void
      {
         param1.currentTarget.removeEventListener(param1.type,arguments.callee);
         this._loadingView.dispose();
         this._loadingView = null;
      }
      
      private function startUpPluginHandler(param1:NarutoAssetsEvent) : void
      {
         var _loc4_:* = 0;
         var _loc3_:NarutoAssetsLoader = param1.currentTarget as NarutoAssetsLoader;
         if(param1.type == NarutoAssetsEvent.PROGRESS)
         {
            this._loadingView.percent = this._loadingView.record + (100 - this._loadingView.record) / 100 * param1.data;
            _loc4_ = int(this._loadingView.percent);
            this.sysMainLoadingReport(_loc4_);
         }
         else if(param1.type == NarutoAssetsEvent.ALL_COMPLETE)
         {
            _loc3_.removeEventListener(NarutoAssetsEvent.ALL_COMPLETE,arguments.callee);
            _loc3_.removeEventListener(NarutoAssetsEvent.PROGRESS,arguments.callee);
            _loc3_.removeEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.assetCompleteHandler);
            this._facade.commandManager.addEventListener(CommandManagerEvent.COMMAND_EXECUTE,this.commandHandler);
            if(ApplicationData.singleton.isToolPreview)
            {
               Facade.getInstance().addEventListener(PluginEvent.PLUGIN_REGISTER,this.pluginCompleteHandler);
            }
            this._startUpRelatedCommand.call();
            this._startUpRelatedCommand = null;
            this._loadingView.tips = "资源加载结束，正在游戏初始化...";
            LoadManager.EndTestSpeed(testComplete);
            this.sysMainLoadingReport(100);
         }
      }
      
      private function pluginCompleteHandler(param1:PluginEvent) : void
      {
         Facade.getInstance().removeEventListener(PluginEvent.PLUGIN_REGISTER,this.pluginCompleteHandler);
         new RumorPlotPreviewCommand().call();
      }
      
      private function frameworkPluginHandler(param1:NarutoAssetsEvent) : void
      {
         var _loc3_:NarutoAssetsLoader = param1.currentTarget as NarutoAssetsLoader;
         if(param1.type == NarutoAssetsEvent.PROGRESS)
         {
            this._loadingView.percent = this._loadingView.record + 4 / 100 * param1.data;
         }
         else if(param1.type == NarutoAssetsEvent.ALL_COMPLETE)
         {
            _loc3_.removeEventListener(NarutoAssetsEvent.ALL_COMPLETE,arguments.callee);
            _loc3_.removeEventListener(NarutoAssetsEvent.PROGRESS,arguments.callee);
            _loc3_.removeEventListener(NarutoAssetsEvent.ASSET_COMPLETE,this.assetCompleteHandler);
         }
      }
      
      private function sysMainLoadingReport(param1:int) : void
      {
         if(param1 >= 20 && this._expectingPercent == 20)
         {
            this.sysLoginReport(SysReportMsgDef.GAME_LOADING_PERCENT_20);
            this._expectingPercent = 40;
         }
         else if(param1 >= 40 && this._expectingPercent == 40)
         {
            this.sysLoginReport(SysReportMsgDef.GAME_LOADING_PERCENT_40);
            this._expectingPercent = 60;
         }
         else if(param1 >= 60 && this._expectingPercent == 60)
         {
            this.sysLoginReport(SysReportMsgDef.GAME_LOADING_PERCENT_60);
            this._expectingPercent = 80;
         }
         else if(param1 >= 80 && this._expectingPercent == 80)
         {
            this.sysLoginReport(SysReportMsgDef.GAME_LOADING_PERCENT_80);
            this._expectingPercent = 100;
         }
         else if(param1 >= 100 && this._expectingPercent == 100)
         {
            this.sysLoginReport(SysReportMsgDef.GAME_LOADING_COMPLETE);
            this._expectingPercent = 0;
         }
      }
      
      private function sysLoginReport(param1:Object = null) : void
      {
         var _loc2_:SysReportCommand = new SysReportCommand(ProtoReportLogID.PROTO_REPORT_LOG_ID_LOGIN_NODE,param1);
         _loc2_.call();
      }
   }
}
