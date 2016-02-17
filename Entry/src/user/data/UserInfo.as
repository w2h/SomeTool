package user.data
{
   import player.datas.PlayerData;
   import ninja.model.data.NinjaInfo;
   import ninja.model.data.FormationInfo;
   import skill.data.SkillInfo;
   import com.tencent.morefun.naruto.util.StateInfo;
   import user.def.UserInfoKeyDef;
   import user.event.UserInfoEvent;
   import user.def.UserStateDef;
   
   [Event(name="baseChanged",type="user.event.UserInfoEvent")]
   [Event(name="roleStateUpdate",type="user.event.UserInfoEvent")]
   [Event(name="ninjaInfoUpdate",type="user.event.UserInfoEvent")]
   [Event(name="baseUpdate",type="user.event.UserInfoEvent")]
   public class UserInfo extends PlayerData
   {
       
      public var baseInited:Boolean;
      
      public var ninjaInited:Boolean;
      
      public var moveInfoInited:Boolean;
      
      private var _faceId:int;
      
      private var _ninjasex:int;
      
      private var _professions:int;
      
      private var _exp:uint;
      
      private var _levelType:int;
      
      private var _money:uint;
      
      private var _yuanbao:uint;
      
      private var _dianquan:uint;
      
      private var _initDirection:int;
      
      private var _initLocation:Object;
      
      private var _hp:uint;
      
      private var _maxHp:uint;
      
      private var _chakura:uint;
      
      private var _maxChakura:uint;
      
      private var _strength:uint;
      
      private var _maxStrength:uint;
      
      private var _ultimateStrength:uint;
      
      private var _buyStrengthNeedMoney:uint;
      
      private var _remainBuyStrengthTime:uint;
      
      private var _battlePower:uint;
      
      private var _maxBattlePower:uint;
      
      private var _ninjaInfoList:Vector.<NinjaInfo>;
      
      private var _formationInfo:FormationInfo;
      
      private var _skillInfo:SkillInfo;
      
      private var _reason:int;
      
      private var _qq3366Level:int;
      
      private var _xinyueLevel:int;
      
      private var _redNameBeFightRemainderNum:int;
      
      private var _redNameBeFightTotalNum:int;
      
      public var guild:user.data.GuildInfoData;
      
      public var state:StateInfo;
      
      public var gameInitialized:Boolean;
      
      public var secondPasswordInfo:user.data.SecondPasswordInfo;
      
      public var delayBattlePower:uint;
      
      public function UserInfo(param1:StateInfo = null)
      {
         this._initLocation = new Object();
         this.guild = new user.data.GuildInfoData();
         this.secondPasswordInfo = new user.data.SecondPasswordInfo();
         super();
         this.gameInitialized = false;
         if(!param1)
         {
            this.state = UserStateConfig.getUserStateInfo();
         }
         else
         {
            this.state = param1;
         }
      }
      
      public function get redNameBeFightRemainderNum() : int
      {
         return this._redNameBeFightRemainderNum;
      }
      
      public function get redNameBeFightTotalNum() : int
      {
         return this._redNameBeFightTotalNum;
      }
      
      public function setRedNameBeFightNum(param1:int, param2:int) : void
      {
         if(this._redNameBeFightRemainderNum != param1 || this._redNameBeFightTotalNum != param2)
         {
            this._redNameBeFightRemainderNum = param1;
            this._redNameBeFightTotalNum = param2;
            this.dispatchBaseChanged(UserInfoKeyDef.RED_NAME_BE_FIGHT_NUM,this._reason,0);
         }
      }
      
      public function get faceId() : int
      {
         return this._faceId;
      }
      
      public function set faceId(param1:int) : void
      {
         this._faceId = param1;
      }
      
      public function get reason() : int
      {
         return this._reason;
      }
      
      public function set reason(param1:int) : void
      {
         this._reason = param1;
      }
      
      public function get skillInfo() : SkillInfo
      {
         return this._skillInfo;
      }
      
      public function set skillInfo(param1:SkillInfo) : void
      {
         this._skillInfo = param1;
      }
      
      public function get formationInfo() : FormationInfo
      {
         return this._formationInfo;
      }
      
      public function set formationInfo(param1:FormationInfo) : void
      {
         this._formationInfo = param1;
      }
      
      public function get ninjaInfoList() : Vector.<NinjaInfo>
      {
         return this._ninjaInfoList;
      }
      
      public function set ninjaInfoList(param1:Vector.<NinjaInfo>) : void
      {
         this._ninjaInfoList = param1;
      }
      
      public function get maxBattlePower() : uint
      {
         return this._maxBattlePower;
      }
      
      public function set maxBattlePower(param1:uint) : void
      {
         this._maxBattlePower = param1;
      }
      
      public function get battlePower() : uint
      {
         return this._battlePower;
      }
      
      public function set battlePower(param1:uint) : void
      {
         var _loc2_:uint = this._battlePower;
         this._battlePower = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.BATTLE_POWER,this._reason,param1 - _loc2_);
         }
      }
      
      public function get maxStrength() : uint
      {
         return this._maxStrength;
      }
      
      public function set maxStrength(param1:uint) : void
      {
         var _loc2_:uint = this._maxStrength;
         this._maxStrength = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.MAX_STRENGTH,this._reason,param1 - _loc2_);
         }
      }
      
      public function get strength() : uint
      {
         return this._strength;
      }
      
      public function set strength(param1:uint) : void
      {
         var _loc2_:uint = this._strength;
         this._strength = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.STRENGTH,this._reason,param1 - _loc2_);
         }
      }
      
      public function get ultimateStrength() : uint
      {
         return this._ultimateStrength;
      }
      
      public function set ultimateStrength(param1:uint) : void
      {
         var _loc2_:uint = this._ultimateStrength;
         this._ultimateStrength = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.ULTIMATE_STRENGTH,this._reason,param1 - _loc2_);
         }
      }
      
      public function get buyStrengthNeedMoney() : uint
      {
         return this._buyStrengthNeedMoney;
      }
      
      public function set buyStrengthNeedMoney(param1:uint) : void
      {
         this._buyStrengthNeedMoney = param1;
      }
      
      public function get remainBuyStrengthTime() : uint
      {
         return this._remainBuyStrengthTime;
      }
      
      public function set remainBuyStrengthTime(param1:uint) : void
      {
         var _loc2_:uint = this._remainBuyStrengthTime;
         this._remainBuyStrengthTime = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.REMAIN_BUY_STRENGTH_TIME,this._reason,param1 - _loc2_);
         }
      }
      
      public function get maxChakura() : uint
      {
         return this._maxChakura;
      }
      
      public function set maxChakura(param1:uint) : void
      {
         this._maxChakura = param1;
      }
      
      public function get chakura() : uint
      {
         return this._chakura;
      }
      
      public function set chakura(param1:uint) : void
      {
         var _loc2_:uint = this._chakura;
         this._chakura = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.MP,this._reason,param1 - _loc2_);
         }
      }
      
      public function get maxHp() : uint
      {
         return this._maxHp;
      }
      
      public function set maxHp(param1:uint) : void
      {
         var _loc2_:uint = this._maxHp;
         this._maxHp = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.HP,this._reason,param1 - _loc2_);
         }
      }
      
      public function get hp() : uint
      {
         return this._hp;
      }
      
      public function set hp(param1:uint) : void
      {
         var _loc2_:uint = this._hp;
         this._hp = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.HP,this._reason,param1 - _loc2_);
         }
      }
      
      public function get dianquan() : uint
      {
         return this._dianquan;
      }
      
      public function set dianquan(param1:uint) : void
      {
         var _loc2_:uint = this._dianquan;
         this._dianquan = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.DIANJUAN,this._reason,param1 - _loc2_);
         }
      }
      
      public function get yuanbao() : uint
      {
         return this._yuanbao;
      }
      
      public function set yuanbao(param1:uint) : void
      {
         var _loc2_:uint = this._yuanbao;
         this._yuanbao = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.YUANBAO,this._reason,param1 - _loc2_);
         }
      }
      
      public function get money() : uint
      {
         return this._money;
      }
      
      public function set money(param1:uint) : void
      {
         var _loc2_:uint = this._money;
         this._money = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.MONEY,this._reason,param1 - _loc2_);
         }
      }
      
      public function get levelType() : int
      {
         return this._levelType;
      }
      
      public function set levelType(param1:int) : void
      {
         this._levelType = param1;
      }
      
      public function get exp() : uint
      {
         return this._exp;
      }
      
      public function set exp(param1:uint) : void
      {
         var _loc2_:uint = this._exp;
         this._exp = param1;
         this.dispatchBaseChanged(UserInfoKeyDef.EXP,this._reason,param1 - _loc2_);
      }
      
      public function get professions() : int
      {
         return this._professions;
      }
      
      public function set professions(param1:int) : void
      {
         this._professions = param1;
      }
      
      override public function set level(param1:int) : void
      {
         var _loc2_:uint = 0;
         _loc2_ = _level;
         super.level = param1;
         _level = param1;
         if(param1 - _loc2_ != 0)
         {
            this.dispatchBaseChanged(UserInfoKeyDef.LEVEL,this._reason,param1 - _loc2_);
         }
      }
      
      public function get qq3366Level() : int
      {
         return this._qq3366Level;
      }
      
      public function set qq3366Level(param1:int) : void
      {
         if(this._qq3366Level == param1)
         {
            return;
         }
         this._qq3366Level = param1;
         this.dispatchBaseChanged(UserInfoKeyDef.QQ_3366_LEVEL,0,param1);
      }
      
      public function get xinyueLevel() : int
      {
         return this._xinyueLevel;
      }
      
      public function set xinyueLevel(param1:int) : void
      {
         if(this._xinyueLevel == param1)
         {
            return;
         }
         this._xinyueLevel = param1;
         this.dispatchBaseChanged(UserInfoKeyDef.QQ_XINYUE_LEVEL,0,param1);
      }
      
      override public function set isCaptain(param1:Boolean) : void
      {
         super.isCaptain = param1;
         this.dispatchEvent(new UserInfoEvent(UserInfoEvent.TEAM_INFO_UPDATE));
      }
      
      override public function set teamId(param1:String) : void
      {
         super.teamId = param1;
         this.dispatchEvent(new UserInfoEvent(UserInfoEvent.TEAM_INFO_UPDATE));
      }
      
      public function get ninjasex() : int
      {
         return this._ninjasex;
      }
      
      public function set ninjasex(param1:int) : void
      {
         this._ninjasex = param1;
      }
      
      public function hasNinja(param1:int) : Boolean
      {
         var _loc2_:NinjaInfo = null;
         for each(_loc2_ in this.ninjaInfoList)
         {
            if(_loc2_.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get isEscort() : Boolean
      {
         return this.state.getFlagByName(UserStateDef.BASE_ESCORT);
      }
      
      public function get isBattling() : Boolean
      {
         return this.state.getFlagByName(UserStateDef.BASE_PVP) || this.state.getFlagByName(UserStateDef.BASE_PVE);
      }
      
      public function get isInDungeon() : Boolean
      {
         return this.state.getFlagByName(UserStateDef.BASE_FAST_DUNGEON);
      }
      
      public function dispatchRoleStateUpdate() : void
      {
         this.dispatchEvent(new UserInfoEvent(UserInfoEvent.ROLE_STATE_UPDATE));
      }
      
      public function dispathMoveUpdate() : void
      {
         this.moveInfoInited = true;
         this.dispatchEvent(new UserInfoEvent(UserInfoEvent.MOVE_UPDATE));
      }
      
      public function dispathNinjaUpdate() : void
      {
         this.baseInited = true;
         this.dispatchEvent(new UserInfoEvent(UserInfoEvent.BASE_UPDATE));
      }
      
      public function dispathBaseUpdate() : void
      {
         this.ninjaInited = true;
         this.dispatchEvent(new UserInfoEvent(UserInfoEvent.NINJA_INFO_UPDATE));
      }
      
      public function dispatchBaseChanged(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:UserInfoEvent = null;
         _loc4_ = new UserInfoEvent(UserInfoEvent.BASE_CHANGED);
         _loc4_.changedValueKey = param1;
         _loc4_.changedReason = param2;
         _loc4_.changedValue = param3;
         this.dispatchEvent(_loc4_);
      }
   }
}
