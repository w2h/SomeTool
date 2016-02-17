package team.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import team.data.TeamMemberData;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   import team.data.TeamData;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import base.ApplicationData;
   import chat.data.ChatItem;
   import def.ModelDef;
   
   public class TeamModel extends BaseModel
   {
      
      public static const KEY_JOIN:String = "join";
      
      public static const KEY_EXIT:String = "exit";
      
      public static const KEY_UPDATE:String = "update";
      
      public static const KEY_MEMBER_UPDATE:String = "memberUpdate";
      
      public static const KEY_MEMBER_TALK:String = "memberTalk";
      
      public static const KEY_MATCH_DUNGEON_STATE:String = "changeMatchDungeonState";
      
      public static const KEY_MATCH_DUNGEON_TIME:String = "changeMatchDungeonTime";
      
      public static const MATCH_DUNGEON_STATE_EMPTY:String = "matchDungeonStateEmpty";
      
      public static const MATCH_DUNGEON_STATE_BEGIN:String = "matchDungeonStateBegin";
      
      public static const MATCH_DUNGEON_STATE_SUCCESS:String = "matchDungeonStateSuccess";
       
      public var id:String;
      
      public var name:String;
      
      public var type:int;
      
      public var destinationId:int;
      
      public var minLevel:int;
      
      public var combatPower:int;
      
      public var members:Vector.<TeamMemberData>;
      
      private var _matchDungeonState:String = "matchDungeonStateEmpty";
      
      private var _matchDungeonTime:int;
      
      public var matchDungeonId:int;
      
      private var _timer:Timer;
      
      public var allowAutoJoin:Boolean = true;
      
      public var acceptInvite:Boolean = true;
      
      public var acceptChallenge:Boolean = true;
      
      public var isJoined:Boolean = false;
      
      public function TeamModel()
      {
         super(ModelDef.TEAM);
      }
      
      public function get timer() : Timer
      {
         if(this._timer == null)
         {
            this._timer = new Timer(1000,0);
            this._timer.addEventListener(TimerEvent.TIMER,this.onTimer);
         }
         return this._timer;
      }
      
      public function get inMatchDungeon() : Boolean
      {
         if(this._matchDungeonState == MATCH_DUNGEON_STATE_BEGIN)
         {
            return true;
         }
         if(this._matchDungeonState == MATCH_DUNGEON_STATE_SUCCESS)
         {
            if(int(getTimer() / 1000) - this.matchDungeonTime < 5)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      override public function toString() : String
      {
         return "TeamModel{" + "\r\t" + "isJoined:" + this.isJoined + "," + "\r\t" + "id:" + this.id + "," + "\r\t" + "name:" + this.name + "," + "\r\t" + "type:" + this.type + "," + "\r\t" + "allowAutoJoin:" + this.allowAutoJoin + "," + "\r\t" + "destinationId:" + this.destinationId + "," + "\r\t" + "members:[" + "\r\t\t" + (this.members?this.members.join(",").replace(new RegExp("\\r","ig"),"\r\t\t"):"") + "\r\t" + "]," + "\r\t" + "matchDungeonState:" + this.matchDungeonState + "," + "\r\t" + "matchDungeonTime:" + this.matchDungeonTime + "\r}";
      }
      
      public function join(param1:TeamData) : void
      {
         this.id = param1.id;
         this.name = param1.name;
         this.type = param1.type;
         this.destinationId = param1.destinationId;
         this.minLevel = param1.captainLevel;
         this.combatPower = param1.combatPower;
         this.members = param1.members;
         this.allowAutoJoin = param1.allowAutoJoin;
         this.isJoined = true;
         dispModelEvent(ModelEvent.UPDATE,KEY_JOIN);
      }
      
      public function update(param1:TeamData) : void
      {
         this.id = param1.id;
         this.name = param1.name;
         this.type = param1.type;
         this.destinationId = param1.destinationId;
         this.minLevel = param1.captainLevel;
         this.combatPower = param1.combatPower;
         this.allowAutoJoin = param1.allowAutoJoin;
         this.members = param1.members;
         this.isJoined = true;
         dispModelEvent(ModelEvent.UPDATE,KEY_UPDATE);
      }
      
      public function memberUpdate(param1:TeamData) : void
      {
         this.id = param1.id;
         this.name = param1.name;
         this.type = param1.type;
         this.destinationId = param1.destinationId;
         this.minLevel = param1.captainLevel;
         this.combatPower = param1.combatPower;
         this.members = param1.members;
         this.allowAutoJoin = param1.allowAutoJoin;
         this.isJoined = true;
         dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_UPDATE);
      }
      
      public function exit() : void
      {
         this.id = null;
         this.name = null;
         this.members = null;
         this.isJoined = false;
         dispModelEvent(ModelEvent.UPDATE,KEY_EXIT);
      }
      
      public function getMember(param1:uint, param2:uint, param3:uint) : TeamMemberData
      {
         var _loc4_:TeamMemberData = null;
         for each(_loc4_ in this.members)
         {
            if(_loc4_.equal(param1,param2,param3))
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      public function get isCaptain() : Boolean
      {
         return this.isJoined && this.getCaptain().equal3(ApplicationData.singleton.selfInfo);
      }
      
      public function get isMember() : Boolean
      {
         return this.isJoined && !this.getCaptain().equal3(ApplicationData.singleton.selfInfo);
      }
      
      public function getCaptain() : TeamMemberData
      {
         var _loc1_:TeamMemberData = null;
         for each(_loc1_ in this.members)
         {
            if(_loc1_.isCaptain)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function memberTalk(param1:ChatItem) : void
      {
         dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_TALK,null,param1);
      }
      
      public function get matchDungeonState() : String
      {
         return this._matchDungeonState;
      }
      
      public function set matchDungeonState(param1:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get matchDungeonTime() : int
      {
         return this._matchDungeonTime;
      }
      
      public function set matchDungeonTime(param1:int) : void
      {
         this._matchDungeonTime = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_MATCH_DUNGEON_TIME);
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
