package player.datas
{
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import serverProto.inc.ProtoDiamondInfo;
   import rank.model.data.RankTitleCfgInfo;
   import serverProto.inc.ProtoPlayerKey;
   import majorRole.def.MajorNinjaDef;
   import player.events.PlayerDataEvent;
   
   [Event(name="destroy",type="player.events.PlayerDataEvent")]
   [Event(name="titleUpdate",type="player.events.PlayerDataEvent")]
   [Event(name="propertyUpdate",type="player.events.PlayerDataEvent")]
   [Event(name="positionUpdate",type="player.events.PlayerDataEvent")]
   public class PlayerData extends EventDispatcher
   {
      
      public static const PROPERTY_NAME:String = "name";
      
      public static const PROPERTY_IS_CAPTAIN:String = "isCaptain";
      
      public static const PROPERTY_NINJA:String = "ninja";
      
      public static const PROPERTY_SHOW_NINJA:String = "showNinja";
      
      public static const PROPERTY_FASHION_NINJA:String = "fashionNinja";
      
      public static const PROPERTY_RUMOR_NINJA:String = "rumorNinja";
      
      public static const PROPERTY_DIRECTION:String = "direction";
      
      public static const PROPERTY_IS_FIGHTING:String = "isFighting";
      
      public static const PROPERTY_TEAM_ID:String = "teamId";
      
      public static const PROPERTY_LEVEL:String = "level";
      
      public static const PROPERTY_VIP_LEVEL:String = "vipLevel";
      
      public static const PROPERTY_DEAD:String = "dead";
      
      public static const PROPERTY_CAMP:String = "camp";
      
      public static const PROPERTY_WIN_STREAK_TIMES:String = "winStreakTimes";
      
      public static const PROPERTY_TITLE:String = "title";
      
      public static const PROPERTY_TASK_SIGN:String = "taskSign";
      
      public static const PROPERTY_KNOWLEDGE_SCORE:String = "knowledgeScore";
      
      public static const PROPERTY_IS_RED_NAME:String = "isRedName";
       
      protected var _uin:uint;
      
      protected var _role:uint;
      
      protected var _svrId:uint;
      
      protected var _name:String;
      
      protected var _ninja:uint;
      
      protected var _showNinja:uint;
      
      protected var _fashionNinja:uint;
      
      protected var _rumorNinja:uint;
      
      protected var _position:Point;
      
      protected var _camp:int = -1;
      
      protected var _winStreakTimes:int = -1;
      
      protected var _teamId:String;
      
      protected var _isDead:Boolean;
      
      protected var _isCaptain:Boolean;
      
      protected var _isFighting:Boolean;
      
      protected var _direction:int;
      
      protected var _level:int;
      
      protected var _vip:int;
      
      public var diamondInfo:ProtoDiamondInfo;
      
      protected var _title:RankTitleCfgInfo;
      
      protected var _taskSign:int = 1;
      
      protected var _isGm:Boolean;
      
      protected var _knowledgeScore:int;
      
      protected var _isRedName:Boolean;
      
      public function PlayerData()
      {
         this._position = new Point();
         super();
      }
      
      public function get isRedName() : Boolean
      {
         return this._isRedName;
      }
      
      public function set isRedName(param1:Boolean) : void
      {
         if(this._isRedName == param1)
         {
            return;
         }
         this._isRedName = param1;
         this.dispatchUpdate(PROPERTY_IS_RED_NAME);
      }
      
      public function get knowledgeScore() : int
      {
         return this._knowledgeScore;
      }
      
      public function set knowledgeScore(param1:int) : void
      {
         if(this._knowledgeScore == param1)
         {
            return;
         }
         this._knowledgeScore = param1;
         this.dispatchUpdate(PROPERTY_KNOWLEDGE_SCORE);
      }
      
      public function get taskSign() : int
      {
         return this._taskSign;
      }
      
      public function set taskSign(param1:int) : void
      {
         if(this._taskSign == param1)
         {
            return;
         }
         this._taskSign = param1;
         this.dispatchUpdate(PROPERTY_TASK_SIGN);
      }
      
      public function get winStreakTimes() : int
      {
         return this._winStreakTimes;
      }
      
      public function set winStreakTimes(param1:int) : void
      {
         if(this._winStreakTimes == param1)
         {
            return;
         }
         this._winStreakTimes = param1;
         this.dispatchUpdate(PROPERTY_WIN_STREAK_TIMES);
      }
      
      public function get camp() : int
      {
         return this._camp;
      }
      
      public function set camp(param1:int) : void
      {
         this._camp = param1;
         this.dispatchUpdate(PROPERTY_CAMP);
      }
      
      public function get isDead() : Boolean
      {
         return this._isDead;
      }
      
      public function set isDead(param1:Boolean) : void
      {
         if(this._isDead == param1)
         {
            return;
         }
         this._isDead = param1;
         this.dispatchUpdate(PROPERTY_DEAD);
      }
      
      public function get uin() : uint
      {
         return this._uin;
      }
      
      public function set uin(param1:uint) : void
      {
         this._uin = param1;
      }
      
      public function get svrId() : uint
      {
         return this._svrId;
      }
      
      public function set svrId(param1:uint) : void
      {
         this._svrId = param1;
      }
      
      public function get role() : uint
      {
         return this._role;
      }
      
      public function set role(param1:uint) : void
      {
         this._role = param1;
      }
      
      public function equeal(param1:uint, param2:uint, param3:uint) : Boolean
      {
         return this._uin == param1 && this._role == param2 && this._svrId == param3;
      }
      
      public function equal2(param1:PlayerData) : Boolean
      {
         return this.equeal(param1.uin,param1.role,param1.svrId);
      }
      
      public function equal3(param1:ProtoPlayerKey) : Boolean
      {
         return this.equeal(param1.uin,param1.roleId,param1.svrId);
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(this._name == param1)
         {
            return;
         }
         this._name = param1;
         this.dispatchUpdate(PROPERTY_NAME);
      }
      
      public function get ninja() : uint
      {
         return this._ninja;
      }
      
      public function set ninja(param1:uint) : void
      {
         if(param1 == this._ninja)
         {
            return;
         }
         this._ninja = param1;
         this.dispatchUpdate(PROPERTY_NINJA);
      }
      
      public function get baseNinja() : int
      {
         return MajorNinjaDef.toBaseMajorId(this.ninja);
      }
      
      public function get showNinja() : uint
      {
         return this._rumorNinja || this._showNinja;
      }
      
      public function set showNinja(param1:uint) : void
      {
         if(param1 == this._showNinja)
         {
            return;
         }
         this._showNinja = param1;
         this.dispatchUpdate(PROPERTY_SHOW_NINJA);
      }
      
      public function get fashionNinja() : uint
      {
         return this._fashionNinja;
      }
      
      public function set fashionNinja(param1:uint) : void
      {
         if(param1 == this._fashionNinja)
         {
            return;
         }
         this._fashionNinja = param1;
         this.dispatchUpdate(PROPERTY_FASHION_NINJA);
      }
      
      public function get rumorNinja() : uint
      {
         return this._rumorNinja;
      }
      
      public function set rumorNinja(param1:uint) : void
      {
         if(param1 == this._rumorNinja)
         {
            return;
         }
         this._rumorNinja = param1;
         this.dispatchUpdate(PROPERTY_RUMOR_NINJA);
      }
      
      public function setPosition(param1:int, param2:int) : void
      {
         this._position.x = param1;
         this._position.y = param2;
         if(hasEventListener(PlayerDataEvent.POSITION_UPDATE))
         {
            dispatchEvent(new PlayerDataEvent(PlayerDataEvent.POSITION_UPDATE));
         }
      }
      
      public function getPosition() : Point
      {
         return this._position;
      }
      
      public function get isCaptain() : Boolean
      {
         return this._isCaptain;
      }
      
      public function set isCaptain(param1:Boolean) : void
      {
         if(this._isCaptain == param1)
         {
            return;
         }
         this._isCaptain = param1;
         this.dispatchUpdate(PROPERTY_IS_CAPTAIN);
      }
      
      public function get isFighting() : Boolean
      {
         return this._isFighting;
      }
      
      public function set isFighting(param1:Boolean) : void
      {
         if(this._isFighting == param1)
         {
            return;
         }
         this._isFighting = param1;
         this.dispatchUpdate(PROPERTY_IS_FIGHTING);
      }
      
      public function get teamId() : String
      {
         return this._teamId;
      }
      
      public function set teamId(param1:String) : void
      {
         if(this._teamId == param1)
         {
            return;
         }
         this._teamId = param1;
         this.dispatchUpdate(PROPERTY_TEAM_ID);
      }
      
      public function get direction() : int
      {
         return this._direction;
      }
      
      public function set direction(param1:int) : void
      {
         this._direction = param1;
         this.dispatchUpdate(PROPERTY_DIRECTION);
      }
      
      public function get level() : int
      {
         return this._level;
      }
      
      public function set level(param1:int) : void
      {
         if(this._level == param1)
         {
            return;
         }
         this._level = param1;
         this.dispatchUpdate(PROPERTY_LEVEL);
      }
      
      public function get vip() : int
      {
         return this._vip;
      }
      
      public function set vip(param1:int) : void
      {
         if(this._vip != param1)
         {
            this._vip = param1;
            this.dispatchUpdate(PROPERTY_VIP_LEVEL);
         }
      }
      
      public function get title() : RankTitleCfgInfo
      {
         return this._title;
      }
      
      public function set title(param1:RankTitleCfgInfo) : void
      {
         this._title = param1;
         dispatchEvent(new PlayerDataEvent(PlayerDataEvent.TITLE_UPDATE));
         this.dispatchUpdate(PROPERTY_TITLE);
      }
      
      public function dispatchUpdate(param1:String) : void
      {
         if(hasEventListener(PlayerDataEvent.PROPERTY_UPDATE))
         {
            dispatchEvent(new PlayerDataEvent(PlayerDataEvent.PROPERTY_UPDATE,param1));
         }
      }
      
      public function get isGm() : Boolean
      {
         return this._isGm;
      }
      
      public function set isGm(param1:Boolean) : void
      {
         this._isGm = param1;
      }
   }
}
