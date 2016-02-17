package
{
   import flash.display.Sprite;
   import flash.display.LoaderInfo;
   import ui.loading.LoadingView;
   import base.ApplicationData;
   import flash.events.Event;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import com.tencent.morefun.naruto.util.KeyboardManager;
   import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
   import com.tencent.morefun.framework.alert.Alert;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.framework.log.handler.IDELogHander;
   import com.tencent.morefun.framework.log.handler.OutPutFileLogHander;
   import flash.external.ExternalInterface;
   import com.tencent.morefun.naruto.plugin.ui.box.BoxManager;
   import utils.HackChecker;
   import ui.command.ShowTextBoxCommand;
   import com.tencent.morefun.framework.net.LoadManager;
   import com.tencent.morefun.framework.net.events.LoadEvent;
   import file.FileAssetManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.FrameSizeDef;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import battle.data.BattleInfo;
   
   public class Application extends Sprite
   {
       
      private var cfg:XML;
      
      private var rootInfo:LoaderInfo;
      
      private var loadingView:LoadingView;
      
      private var _hackCheck:Boolean;
      
      public function Application()
      {
         super();
         this.addEventListener(Event.ADDED,this.onAdded);
      }
      
      public static function flashDetect() : Boolean
      {
         return true;
      }
      
      public function setup(param1:XML, param2:LoadingView, param3:LoaderInfo, param4:Boolean = false) : void
      {
         this.cfg = param1;
         this.loadingView = param2;
         this.rootInfo = param3;
         this._hackCheck = param4;
         this.updateWebVar();
      }
      
      private function updateWebVar() : void
      {
         if((ApplicationData.singleton.source == "" || ApplicationData.singleton.source == "null" || ApplicationData.singleton.source == null) && ApplicationData.singleton.via != "" && ApplicationData.singleton.via != "null" && ApplicationData.singleton.via != null)
         {
            if(ApplicationData.singleton.via.indexOf("QZ.XX.TOOLBAR.APPID") != -1)
            {
               ApplicationData.singleton.via = "300";
               ApplicationData.singleton.source = "300";
            }
         }
         if(ApplicationData.singleton.via.indexOf("QZ.XX.TOOLBAR.APPID") != -1)
         {
            ApplicationData.singleton.via = "300";
         }
         if(ApplicationData.singleton.via == null || ApplicationData.singleton.via == "null" || ApplicationData.singleton.via == "")
         {
            ApplicationData.singleton.via = ApplicationData.singleton.source;
         }
         ApplicationData.singleton.source = ApplicationData.singleton.source || "website";
      }
      
      private function onAdded(param1:Event) : void
      {
         var _loc2_:Sprite = null;
         this.removeEventListener(Event.ADDED,this.onAdded);
         LayerManager.singleton.initialize(stage);
         LayoutManager.singleton.initialize(stage);
         KeyboardManager.singleton.initialize(stage);
         TimerProvider.initliazed(stage,10);
         Alert.isDebug = ApplicationData.singleton.isDebug;
         Alert.setAlertFun(this.onGlobelAlert);
         this.initReport();
         this.initLayer();
         this.initModel();
         logger.addOutHandler(new IDELogHander());
         logger.addOutHandler(new OutPutFileLogHander(this.stage,"hylogfile"));
         if(js.available)
         {
            if(ExternalInterface.available)
            {
               try
               {
                  ExternalInterface.addCallback("flashDetect",flashDetect);
               }
               catch(e:Error)
               {
               }
            }
            logger.output("start flash crashed detect");
         }
         new NarutoStartUp(this.loadingView).startUp(this.cfg);
         stage.addEventListener(Event.ACTIVATE,this.onActive);
         stage.addEventListener(Event.DEACTIVATE,this.onDeactive);
         BoxManager.initialize(stage);
         stage.stageFocusRect = false;
         this.initLayerDisplay();
         if(this._hackCheck)
         {
            HackChecker.enabledCheckSpeedUp();
         }
      }
      
      private function onGlobelAlert(param1:String) : void
      {
         new ShowTextBoxCommand(param1).call();
      }
      
      protected function initReport() : void
      {
         LoadManager.globeErrorDispatcher.addEventListener(LoadEvent.ERROR,this.onLoadError);
      }
      
      private function onLoadError(param1:LoadEvent) : void
      {
         var _loc2_:Array = null;
         if(ExternalInterface.available && ApplicationData.singleton.isDebug == false)
         {
            _loc2_ = [];
            _loc2_.push({
               "name":"type",
               "value":2
            });
            _loc2_.push({
               "name":"uin",
               "value":ApplicationData.singleton.selfuin
            });
            _loc2_.push({
               "name":"zone",
               "value":ApplicationData.singleton.ser_id
            });
            _loc2_.push({
               "name":"host",
               "value":ApplicationData.singleton.ip
            });
            _loc2_.push({
               "name":"port",
               "value":ApplicationData.singleton.port
            });
            _loc2_.push({
               "name":"url",
               "value":FileAssetManager.getQualifiedUrl(param1.url)
            });
            ExternalInterface.call("clientReport",_loc2_);
         }
      }
      
      protected function initLayer() : void
      {
         LayoutManager.singleton.pushFrameSize(FrameSizeDef.DEAFULT_MIN_WIDTH,FrameSizeDef.DEFAULT_MAX_WIDTH,FrameSizeDef.DEFAULT_MIN_HEIGHT,FrameSizeDef.DEFAULT_MAX_HEIGHT);
         LayerManager.singleton.createLayer(LayerDef.RANK_BATTLE,LayerDef.RANK_BATTLE_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.TOPMOST_MASK,LayerDef.TOPMOST_MASK_INDEX,true,false,false);
         LayerManager.singleton.createLayer(LayerDef.FIGHT,LayerDef.FIGHT_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.FIGHT_UI,LayerDef.FIGHT_UI_INDEX,false,true,false);
         LayerManager.singleton.createLayer(LayerDef.MAP_DEF,LayerDef.MAP_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.BATTLE_MASK_DEF,LayerDef.BATTLE_MASK_INDEX,true);
         LayerManager.singleton.createLayer(LayerDef.TEST,LayerDef.TEST_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.LOGIN,LayerDef.LOGIN_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.DEBUG,LayerDef.DEBUG_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.SETUP,LayerDef.SETUP_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.UI_GAME,LayerDef.UI_GAME_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.BOX,LayerDef.BOX_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.REWARD_BOX,LayerDef.REWARD_BOX_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.MAIN_UI,LayerDef.MAIN_UI_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.DRAG_ICON,LayerDef.DRAG_ICON_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.TIPS,LayerDef.TIPS_INDEX,false,false);
         LayerManager.singleton.createLayer(LayerDef.INTERACTIVE_TIPS,LayerDef.INTERACTIVE_TIPS_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.VIDEO,LayerDef.VIDEO_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.BACKG_FRAME,LayerDef.BACK_FRAME_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.CHAT,LayerDef.CHAT_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.MAIN_UI_NOTIFY,LayerDef.MAIN_UI_NOTIFY_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.NEW_PLOT,LayerDef.NEW_PLOT_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.NEW_PLOT_TOP,LayerDef.NEW_PLOT_TOP_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.PLOT,LayerDef.PLOT_INDEX,false,true,false);
         LayerManager.singleton.createLayer(LayerDef.PLOT_FRAME,LayerDef.PLOT_FRAME_INDEX,false,true,false);
         LayerManager.singleton.createLayer(LayerDef.STAGE_MASK,LayerDef.STAGE_MASK_INDEX,false,false,false);
         LayerManager.singleton.createLayer(LayerDef.LOADING,LayerDef.LOADING_INDEX,false,true,false);
         LayerManager.singleton.createLayer(LayerDef.FULL_LOADING,LayerDef.FULL_LOADING_INDEX,false,true,false);
         LayerManager.singleton.createLayer(LayerDef.MENU,LayerDef.MENU_INDEX,false,false,false);
         LayerManager.singleton.createLayer(LayerDef.WORLD_SNAPSHOT,LayerDef.WORLD_SNAPSHOT_INDEX,false,false);
         LayerManager.singleton.createLayer(LayerDef.NEW_PLOT_FRAME,LayerDef.NEW_PLOT_FRAME_INDEX,false,false);
         LayerManager.singleton.createLayer(LayerDef.LOGIN,LayerDef.NEW_PLOT_FRAME_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.LOGIN_FRAME,LayerDef.LOGIN_FRAME_INDEX,false,false,false);
         LayerManager.singleton.createLayer(LayerDef.PREWAR,LayerDef.PREWAR_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.PREWAR_UI,LayerDef.PREWAR_UI_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.PREWAR_FORE_GROUND,LayerDef.PREWAR_FORE_GROUND_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.BATTLE_FRAME,LayerDef.BATTLE_FRAME_INDEX,false,false,false);
         LayerManager.singleton.createLayer(LayerDef.USER_INFO_CHANGE,LayerDef.USER_INFO_CHANGE_INDEX,false,false,false);
         LayerManager.singleton.createLayer(LayerDef.GUIDE_UI,LayerDef.GUIDE_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.GUIDE_UI_MASK,LayerDef.GUIDE_MASK_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.NINJA_BASE,LayerDef.NINJA_BASE_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.GAME_TIP,LayerDef.GAME_TIP_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.TEXT_BOX,LayerDef.TEXT_BOX_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.UPON_TEXT_BOX,LayerDef.UPON_TEXT_BOX_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.ARENA_BOX,LayerDef.ARENA_BOX_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.GUILD_ESCORT_SCENE,LayerDef.GUILD_ESCORT_SCENE_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.GUILD_ESCORT_BACKGROUND,LayerDef.GUILD_ESCORT_BACKGROUND_INDEX,false,true,false);
         LayerManager.singleton.createLayer(LayerDef.FRIEND_PANEL,LayerDef.FRIEND_PANEL_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.SYSTEM_ERROR,LayerDef.SYSTEM_ERROR_INDEX,false);
         LayerManager.singleton.createLayer(LayerDef.DROP_DOWN_LIST,LayerDef.DROP_DOWN_LIST_INDEX,false);
      }
      
      private function initModel() : void
      {
         Facade.getInstance().getPluginManager().registerModel(new BattleInfo());
      }
      
      private function get globelInfo() : Object
      {
         return ApplicationData.singleton.globelInfo;
      }
      
      private function onActive(param1:Event) : void
      {
         TimerProvider.active();
         ApplicationData.singleton.isActivate = true;
      }
      
      private function onDeactive(param1:Event) : void
      {
         TimerProvider.deactive();
         ApplicationData.singleton.isActivate = false;
      }
      
      private function initLayerDisplay() : void
      {
         LayerManager.singleton.addItemToLayer(this.loadingView,LayerDef.FULL_LOADING);
      }
   }
}
