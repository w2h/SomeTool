package base
{
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import user.data.UserInfo;
   import com.tencent.morefun.naruto.base.GlobelInfo;
   import vip.IVIPPrivilege;
   import serverProto.inc.ProtoPlayerKey;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import def.ApplicationKeyDef;
   import flash.utils.getTimer;
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   
   [Event(name="hideZoneId",type="flash.events.Event")]
   [Event(name="HUD_statebarview_goHome",type="flash.events.Event")]
   public class ApplicationData extends EventDispatcher
   {
      
      public static const EVENT_HIDE_ZONE_ID:String = "hideZoneId";
      
      public static const CUR_SERVER_TIME_UPDATE:String = "curServerTimeUpdate";
      
      public static const CAN_PVP_UPDATE:String = "canPvpUpdate";
      
      private static var ms_instance:base.ApplicationData;
       
      private var _selfuin:uint;
      
      private var _selfRole:int;
      
      private var _selfSrv:int;
      
      private var _selfInfo:UserInfo;
      
      private var _globelData:GlobelInfo;
      
      private var _isActivate:Boolean = true;
      
      private var _privilege:IVIPPrivilege;
      
      private var _selfPlayerKey:ProtoPlayerKey;
      
      public var isAutoFight:Boolean = false;
      
      public var isSpeedUp:Boolean = false;
      
      public var isDebug:Boolean = false;
      
      public var ser_id:int;
      
      public var vipSource:String = "";
      
      public var source:String = "";
      
      public var via:String = "";
      
      public var port:int;
      
      public var ip:String;
      
      public var defaultIp:String;
      
      public var host:String;
      
      public var baseURL:String = "http://dev.huoying.qq.com/";
      
      public var uiURL:String;
      
      public var exuiURL:String;
      
      public var isNewbie:Boolean;
      
      public var roleSex:int;
      
      public var hideZoneId:Boolean;
      
      public var baseWebURL:String;
      
      public var tgp:Boolean;
      
      public var isAutoLaunch:Boolean;
      
      public var isAutoLaunchWithStartup:Boolean;
      
      public var tgpBoxFlag:Boolean;
      
      public var rd:String;
      
      public var loginWay:int;
      
      public var isMergedServer:Boolean;
      
      public var tgw:Boolean;
      
      public var skey:String;
      
      public var seperateSkey:String;
      
      private var _curServerTime:uint;
      
      private var _clientstamp:uint;
      
      public var isInnerNumber:Boolean = false;
      
      public var isInArena:Boolean = false;
      
      public var isInRumor:Boolean;
      
      public var isToolPreview:Boolean;
      
      private var _canPVP:Boolean;
      
      public var guildBeastOpenFlag:Boolean;
      
      public function ApplicationData()
      {
         this._globelData = new GlobelInfo();
         this._selfPlayerKey = new ProtoPlayerKey();
         super();
      }
      
      public static function get singleton() : base.ApplicationData
      {
         if(ms_instance == null)
         {
            ms_instance = new base.ApplicationData();
         }
         return ms_instance;
      }
      
      public static function dispatchNarutoEvent(param1:Event) : void
      {
         singleton.dispatchEvent(param1);
      }
      
      public static function addNarutoEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         singleton.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function removeNarutoEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         singleton.removeEventListener(param1,param2,param3);
      }
      
      public function set selfSrv(param1:int) : void
      {
         this._selfSrv = param1;
         this._selfPlayerKey.svrId = this._selfSrv;
      }
      
      public function get selfSrv() : int
      {
         return this._selfSrv;
      }
      
      public function set selfRole(param1:int) : void
      {
         var _loc2_:* = 0;
         _loc2_ = this._selfRole;
         this._selfRole = param1;
         this._selfPlayerKey.roleId = this._selfRole;
         this.dispModelEvent(ModelEvent.UPDATE,ApplicationKeyDef.SELFUIN,_loc2_,this._selfRole);
      }
      
      public function get selfRole() : int
      {
         return this._selfRole;
      }
      
      public function get selfuin() : uint
      {
         return this._selfuin;
      }
      
      public function set selfuin(param1:uint) : void
      {
         var _loc2_:uint = 0;
         _loc2_ = this._selfuin;
         this._selfuin = param1;
         this._selfPlayerKey.uin = this._selfuin;
         this.dispModelEvent(ModelEvent.UPDATE,ApplicationKeyDef.SELFUIN,_loc2_,this._selfuin);
      }
      
      public function resetSelfInfo() : void
      {
         this._selfInfo = null;
      }
      
      public function set selfInfo(param1:UserInfo) : void
      {
         var _loc2_:UserInfo = null;
         _loc2_ = this._selfInfo;
         this._selfInfo = param1;
         this._selfuin = param1.uin;
         this._selfRole = param1.role;
         this._selfSrv = param1.svrId;
         this._selfPlayerKey.uin = this._selfuin;
         this._selfPlayerKey.roleId = this._selfRole;
         this._selfPlayerKey.svrId = this._selfSrv;
         this.dispModelEvent(ModelEvent.UPDATE,ApplicationKeyDef.SELF_INFO,_loc2_,this._selfInfo);
      }
      
      public function get selfInfo() : UserInfo
      {
         return this._selfInfo;
      }
      
      public function get globelInfo() : GlobelInfo
      {
         return this._globelData;
      }
      
      public function set isActivate(param1:Boolean) : void
      {
         this._isActivate = param1;
      }
      
      public function get isActivate() : Boolean
      {
         return this._isActivate;
      }
      
      public function get privilege() : IVIPPrivilege
      {
         return this._privilege;
      }
      
      public function set privilege(param1:IVIPPrivilege) : void
      {
         this._privilege = param1;
      }
      
      public function get curServerTime() : uint
      {
         return this._curServerTime + (getTimer() - this._clientstamp) / 1000;
      }
      
      public function set curServerTime(param1:uint) : void
      {
         if(param1 > 0)
         {
            this._curServerTime = param1;
            this._clientstamp = getTimer();
            dispatchEvent(new Event(CUR_SERVER_TIME_UPDATE));
         }
      }
      
      public function get selfPlayerKey() : ProtoPlayerKey
      {
         return this._selfPlayerKey;
      }
      
      public function get canPVP() : Boolean
      {
         return this._canPVP;
      }
      
      public function set canPVP(param1:Boolean) : void
      {
         this._canPVP = param1;
         dispatchEvent(new Event(CAN_PVP_UPDATE));
      }
      
      public function isSlefPlayerKey(param1:ProtoPlayerKey) : Boolean
      {
         if(param1.uin == this.selfInfo.uin && param1.roleId == this.selfInfo.role && param1.svrId == this.selfInfo.svrId)
         {
            return true;
         }
         return false;
      }
      
      public function dispModelEvent(param1:String, param2:Object = null, param3:Object = null, param4:Object = null) : void
      {
         dispatchEvent(new ModelEvent(param1,param2,param3,param4));
      }
      
      public function updateFinish() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE_FINISH);
      }
      
      public function getModel(param1:String) : BaseModel
      {
         return Facade.getInstance().getPluginManager().retrieveModel(param1);
      }
      
      public function getResource(param1:String, param2:String) : *
      {
         return Facade.getInstance().getPluginManager().getPluginInfo(param1).resObject[param2];
      }
   }
}
