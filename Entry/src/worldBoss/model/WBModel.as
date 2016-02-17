package worldBoss.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import serverProto.worldBoss.ProtoWorldBossOpenInfo;
   import serverProto.worldBoss.ProtoRankPlayerList;
   import serverProto.worldBoss.ProtoGetWorldBossStatusResp;
   import worldBoss.model.data.WorldBossRewardInfo;
   import battle.data.BattleInfo;
   import flash.utils.Timer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class WBModel extends BaseModel
   {
      
      public static const WORLD_BOSS_MODEL:String = "worldBossModel";
      
      public static const UPDATE_ALL:String = "updateAll";
      
      public static const UPDATE_TIME:String = "updateTime";
      
      public static const UPDATE_STATE:String = "updateState";
      
      public static const UPDATE_BUFF_0:String = "updateBuff0";
      
      public static const UPDATE_BUFF_1:String = "updateBuff1";
      
      public static const UPDATE_FAINT:String = "updateFaint";
      
      public static const UPDATE_REVIVE:String = "updateRevive";
      
      public static const S0_UNOPEN:int = 0;
      
      public static const S1_PREHEAT:int = 1;
      
      public static const S2_OPENING:int = 2;
      
      public static const S3_CLOSE:int = 3;
      
      private static var _instance:worldBoss.model.WBModel;
       
      public var beginTime:uint;
      
      public var endTime:uint;
      
      public var revivalTime:uint;
      
      public var currentTime:uint;
      
      public var worldBossList:Array;
      
      public var nextWorldBoss:ProtoWorldBossOpenInfo;
      
      public var playerList:Array;
      
      public var selfRank:ProtoRankPlayerList;
      
      public var status:ProtoGetWorldBossStatusResp;
      
      public var reward:WorldBossRewardInfo;
      
      public var battleInfo:BattleInfo;
      
      private var _state:int;
      
      private var _timer:Timer;
      
      private var _faint:Boolean;
      
      public function WBModel()
      {
         super(WORLD_BOSS_MODEL);
         if(_instance)
         {
            throw Error("RankModel is a singleton class!");
         }
         _instance = this;
         this._timer = new Timer(1000);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimer);
      }
      
      public static function getInstance() : worldBoss.model.WBModel
      {
         if(!_instance)
         {
            _instance = new worldBoss.model.WBModel();
         }
         return _instance;
      }
      
      public function updateAll() : void
      {
         dispatchEvent(new Event(UPDATE_ALL));
      }
      
      public function updateBuff(param1:String) : void
      {
         dispatchEvent(new Event(param1));
      }
      
      private function setTimes(param1:uint, param2:uint, param3:uint, param4:int) : void
      {
         this.beginTime = param1;
         this.endTime = param2;
         this.revivalTime = param3;
         this.currentTime = param4;
         if(this.status && param3 == 0 && this.status.isDead == 1)
         {
            this.status.isDead = 0;
            this.updateAll();
         }
         if(param1 > this.nextWorldBoss.preheatTime)
         {
            this.state = S0_UNOPEN;
         }
         else if(param1 > 0)
         {
            this.state = S1_PREHEAT;
         }
         else if(param2 > 0)
         {
            this.state = S2_OPENING;
         }
         else
         {
            this.state = S3_CLOSE;
         }
         dispatchEvent(new Event(UPDATE_TIME));
      }
      
      public function setCurrentBossAndUpdatTime(param1:ProtoWorldBossOpenInfo, param2:uint, param3:uint = 0) : void
      {
         this.nextWorldBoss = param1;
         if(param1)
         {
            this.currentTime = param2 - 1;
            this.revivalTime = param3 + 1;
            this._timer.reset();
            this._timer.start();
            this.onTimer(null);
         }
         else
         {
            this._timer.stop();
         }
      }
      
      private function onTimer(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         this.currentTime = this.currentTime + 1;
         _loc2_ = Math.max(0,uint(this.nextWorldBoss.startTime) - this.currentTime);
         _loc3_ = Math.max(0,uint(this.nextWorldBoss.endTime) - this.currentTime);
         _loc4_ = Math.max(0,this.revivalTime - 1);
         this.setTimes(_loc2_,_loc3_,_loc4_,this.currentTime);
         if(_loc2_ == 0 && _loc3_ == 0 && _loc4_ == 0)
         {
            this._timer.stop();
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(this._state == param1)
         {
            return;
         }
         this._state = param1;
         dispatchEvent(new Event(UPDATE_STATE));
      }
      
      public function set faint(param1:Boolean) : void
      {
         if(this._faint == param1)
         {
            return;
         }
         this._faint = param1;
         dispatchEvent(new Event(UPDATE_FAINT));
      }
      
      public function get faint() : Boolean
      {
         return this._faint;
      }
   }
}
