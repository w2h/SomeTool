package task.models
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import flash.utils.getTimer;
   import task.datas.TaskInfo;
   import task.datas.TaskConditionInfo;
   import task.defs.TaskStateDef;
   import task.defs.TaskTypeDef;
   import def.ModelDef;
   
   public class TaskModel extends BaseModel
   {
      
      public static const KEY_TASK_INFOS:String = "taskInfos";
      
      public static const KEY_TASK_INFO_MODIFY:String = "taskInfoModify";
      
      public static const KEY_TASK_INFO_RECEIVE:String = "taskInfoReceive";
      
      public static const KEY_TASK_INFO_GIVEUP:String = "taskInfoGiveup";
      
      public static const KEY_TASK_INFO_REMOVE:String = "taskInfoRemove";
      
      public static const KEY_TASK_INFO_COMMIT:String = "taskInfoCommit";
      
      public static const KEY_HISTROY_IDS:String = "histroyIds";
      
      public static const KEY_HISTROY_ADD_ID:String = "histroyAdd";
      
      public static const KEY_XIUXING_DONE_NUM:String = "xiuxingDoneNum";
      
      public static const KEY_XIUXING_TOTAL_NUM:String = "xiuxingTotalNum";
      
      public static const KEY_WEEKLY_NUM:String = "weeklyNum";
      
      public static const KEY_WEEKLY_REFRESH_TIME:String = "weeklyRefreshTime";
      
      public static const KEY_PRATICE_NUM:String = "praticeNum";
      
      public static const KEY_ESCORT_NUM:String = "escortNum";
      
      public static const KEY_ESCORT_FREE_ACCEPT_NUM:String = "escortFreeAcceptNum";
      
      public static const KEY_WANTED_NUM:String = "wantedNum";
       
      private var histroyIds:Array;
      
      private var taskInfos:Array;
      
      public var respondedCount:int;
      
      private var xiuxingTotalNum:int;
      
      private var xiuxingDoneNum:int;
      
      private var _weeklyNum:int;
      
      private var _weeklyTotalNum:int;
      
      private var _weeklyRefreshTime:int;
      
      private var _weeklyRefreshTime_runtime:uint;
      
      private var _weeklyRewardStatus:Array;
      
      private var _weeklyRewardIds:Array;
      
      private var praticeTotalNum:int;
      
      private var praticeRemainderNum:int;
      
      private var _escortTotalNum:int;
      
      private var _escortRemainderNum:int;
      
      private var _escortRefreshNum:uint;
      
      private var _escortRefreshTime:uint;
      
      private var _escortRefreshTime_runtime:uint;
      
      private var _escortFaildTime:int;
      
      private var _escortFaildTime_runtime:uint;
      
      private var _escortRewardMoney:int;
      
      private var _escortRewardTicket:int;
      
      private var _escortRewardAddition:int = 100;
      
      private var _escortRewardGuildContribute:int;
      
      private var _escortFreeAcceptRemainderNum:int;
      
      private var _escortFreeAcceptTotalNum:int;
      
      private var _wantedTotalNum:int;
      
      private var _wantedRemainderNum:int;
      
      private var _wantedExpAddition:int;
      
      public function TaskModel()
      {
         super(ModelDef.TASK);
         this.histroyIds = [];
         this.taskInfos = [];
      }
      
      public function get responded() : Boolean
      {
         return this.respondedCount > 0;
      }
      
      public function setWeeklyNum(param1:int, param2:int, param3:Array, param4:Array) : void
      {
         var _loc5_:int = this._weeklyNum;
         this._weeklyNum = param1;
         this._weeklyTotalNum = param2;
         this._weeklyRewardStatus = param3;
         this._weeklyRewardIds = param4;
         dispModelEvent(ModelEvent.UPDATE,KEY_WEEKLY_NUM,_loc5_,this._weeklyNum);
      }
      
      public function get weeklyNum() : int
      {
         return this._weeklyNum;
      }
      
      public function get weeklyTotalNum() : int
      {
         return this._weeklyTotalNum;
      }
      
      public function get weeklyRewardStatus() : Array
      {
         return this._weeklyRewardStatus;
      }
      
      public function get weeklyRewardIds() : Array
      {
         return this._weeklyRewardIds;
      }
      
      public function set weeklyRefreshTime(param1:int) : void
      {
         if(this._weeklyRefreshTime != param1)
         {
            this._weeklyRefreshTime_runtime = getTimer();
            this._weeklyRefreshTime = param1;
            dispModelEvent(ModelEvent.UPDATE,KEY_WEEKLY_REFRESH_TIME);
         }
      }
      
      public function get weeklyRefreshTime() : int
      {
         if(this._weeklyRefreshTime == 0)
         {
            return 0;
         }
         return this._weeklyRefreshTime - (getTimer() - this._weeklyRefreshTime_runtime) / 1000;
      }
      
      public function setWantedNum(param1:int, param2:int, param3:int) : void
      {
         this._wantedRemainderNum = param1;
         this._wantedTotalNum = param2;
         this._wantedExpAddition = param3;
         dispModelEvent(ModelEvent.UPDATE,KEY_WANTED_NUM);
      }
      
      public function get wantedRemainderNum() : int
      {
         return this._wantedRemainderNum;
      }
      
      public function get wantedTotalNum() : int
      {
         return this._wantedTotalNum;
      }
      
      public function get wantedExpAddition() : int
      {
         return this._wantedExpAddition;
      }
      
      public function setEscortNum(param1:int, param2:int, param3:int, param4:uint, param5:int, param6:int, param7:int, param8:int, param9:int) : void
      {
         this._escortRemainderNum = param1;
         this._escortTotalNum = param2;
         this._escortRefreshNum = param3;
         this._escortRefreshTime = param4;
         this._escortRefreshTime_runtime = getTimer();
         this._escortFaildTime = param5;
         this._escortFaildTime_runtime = getTimer();
         this._escortRewardMoney = param6;
         this._escortRewardTicket = param7;
         this._escortRewardAddition = param8;
         this._escortRewardGuildContribute = param9;
         dispModelEvent(ModelEvent.UPDATE,KEY_ESCORT_NUM);
      }
      
      public function get escortRewardGuildContribute() : int
      {
         return this._escortRewardGuildContribute;
      }
      
      public function setEscortFreeAcceptNum(param1:int, param2:int) : void
      {
         this._escortFreeAcceptRemainderNum = Math.max(0,param1);
         this._escortFreeAcceptTotalNum = param2;
         dispModelEvent(ModelEvent.UPDATE,KEY_ESCORT_FREE_ACCEPT_NUM);
      }
      
      public function get escortRewardAddition() : int
      {
         return this._escortRewardAddition;
      }
      
      public function get escortFreeAcceptRemainderNum() : int
      {
         return this._escortFreeAcceptRemainderNum;
      }
      
      public function get escortFreeAcceptTotalNum() : int
      {
         return this._escortFreeAcceptTotalNum;
      }
      
      public function get isEscorting() : Boolean
      {
         return this._escortFaildTime > 0;
      }
      
      public function get escortRewardMoney() : int
      {
         return this._escortRewardMoney;
      }
      
      public function get escortRewardTicket() : int
      {
         return this._escortRewardTicket;
      }
      
      public function get escortFaildTime() : int
      {
         return this._escortFaildTime - (getTimer() - this._escortFaildTime_runtime) / 1000;
      }
      
      public function get escortRefreshTime() : uint
      {
         return this._escortRefreshTime - (getTimer() - this._escortRefreshTime_runtime) / 1000;
      }
      
      public function get escortRefreshNum() : uint
      {
         return this._escortRefreshNum;
      }
      
      public function get escortRemainderNum() : int
      {
         return this._escortRemainderNum;
      }
      
      public function get escortTotalNum() : int
      {
         return this._escortTotalNum;
      }
      
      public function setPraticeNum(param1:int, param2:int) : void
      {
         this.praticeRemainderNum = param1;
         this.praticeTotalNum = param2;
         dispModelEvent(ModelEvent.UPDATE,KEY_PRATICE_NUM);
      }
      
      public function getPraticeRemainderNum() : int
      {
         return this.praticeRemainderNum;
      }
      
      public function getPraticeTotalNum() : int
      {
         return this.praticeTotalNum;
      }
      
      public function setHistroyIds(param1:Array) : void
      {
         this.histroyIds = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_HISTROY_IDS,null,param1);
      }
      
      public function addHistroyId(param1:int) : void
      {
         this.histroyIds.push(param1);
         dispModelEvent(ModelEvent.UPDATE,KEY_HISTROY_ADD_ID,null,param1);
      }
      
      public function hasHistoryId(param1:int) : Boolean
      {
         return this.histroyIds.indexOf(param1) != -1;
      }
      
      public function hasHistoryIdByExpression(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc2_:Array = param1.match(new RegExp("[^()][^()]+","g"));
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = true;
            for each(_loc5_ in _loc3_.split(","))
            {
               _loc4_ = _loc4_ && this.hasHistoryId(int(_loc5_));
            }
            if(_loc4_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function setTaskInfos(param1:Array) : void
      {
         this.respondedCount++;
         this.taskInfos = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFOS,null,param1);
      }
      
      public function setTaskInfosByType(param1:Array, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:TaskInfo = null;
         if(param2 == 0)
         {
            this.setTaskInfos(param1);
         }
         else
         {
            _loc3_ = this.taskInfos.length - 1;
            while(_loc3_ >= 0)
            {
               _loc4_ = this.taskInfos[_loc3_];
               if(_loc4_.type == param2)
               {
                  this.taskInfos.splice(_loc3_,1);
               }
               _loc3_--;
            }
            for each(_loc4_ in param1)
            {
               this.taskInfos.push(_loc4_);
            }
            dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFOS);
         }
      }
      
      public function hasTaskInfo(param1:int) : Boolean
      {
         var _loc2_:TaskInfo = null;
         for each(_loc2_ in this.taskInfos)
         {
            if(_loc2_.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hasTaskInfoByType(... rest) : Boolean
      {
         var _loc2_:TaskInfo = null;
         for each(_loc2_ in this.taskInfos)
         {
            if(rest.indexOf(_loc2_.type) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hasTaskInfoByState(param1:int, param2:int) : Boolean
      {
         var _loc3_:TaskInfo = null;
         for each(_loc3_ in this.taskInfos)
         {
            if(_loc3_.id == param1 && _loc3_.state == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hasTaskInfoByStateByExpression(param1:String, param2:int) : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         var _loc6_:String = null;
         var _loc3_:Array = param1.match(new RegExp("[^()][^()]+","g"));
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = true;
            for each(_loc6_ in _loc4_.split(","))
            {
               _loc5_ = _loc5_ && this.hasTaskInfoByState(int(_loc6_),param2);
            }
            if(_loc5_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hasTaskInfoByConditionState(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc4_:TaskInfo = null;
         var _loc5_:TaskConditionInfo = null;
         for each(_loc4_ in this.taskInfos)
         {
            if(_loc4_.id == param1 && _loc4_.state == TaskStateDef.RECEIVED)
            {
               _loc5_ = _loc4_.conditions[param2] as TaskConditionInfo;
               if(_loc5_ && _loc5_.state == param3)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function hasTaskInfoByStateAndConditionStateByExpression(param1:String) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function modifyTaskInfo(param1:TaskInfo) : void
      {
         var _loc2_:TaskInfo = null;
         for each(_loc2_ in this.taskInfos)
         {
            if(_loc2_.id == param1.id)
            {
               _loc2_.isNew = param1.isNew;
               _loc2_.type = param1.type;
               _loc2_.state = param1.state;
               _loc2_.conditions = param1.conditions;
               _loc2_.condState = param1.condState;
               dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_MODIFY,_loc2_,_loc2_);
               return;
            }
         }
      }
      
      public function receiveTaskInfo(param1:TaskInfo, param2:Boolean = false) : void
      {
         var _loc3_:TaskInfo = null;
         for each(_loc3_ in this.taskInfos)
         {
            if(_loc3_.id == param1.id)
            {
               this.modifyTaskInfo(param1);
               return;
            }
         }
         this.taskInfos.push(param1);
         dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_RECEIVE,null,param1);
      }
      
      public function giveupTaskInfo(param1:int) : void
      {
         var _loc3_:TaskInfo = null;
         var _loc4_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.taskInfos.length)
         {
            _loc3_ = this.taskInfos[_loc2_] as TaskInfo;
            if(_loc3_.id == param1)
            {
               if(_loc3_.type == TaskTypeDef.LARGESS)
               {
                  _loc4_ = this.getLengthByType(TaskTypeDef.LARGESS);
                  if(_loc4_ <= 4)
                  {
                     _loc3_.state = TaskStateDef.RECEIVE_ABLE;
                  }
                  else
                  {
                     this.taskInfos.splice(_loc2_,1);
                  }
               }
               else if(_loc3_.type == TaskTypeDef.ESCORT)
               {
                  _loc3_.state = TaskStateDef.RECEIVE_ABLE;
               }
               else
               {
                  this.taskInfos.splice(_loc2_,1);
               }
               dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_GIVEUP,_loc3_,null);
               return;
            }
            _loc2_++;
         }
      }
      
      public function commitTaskInfo(param1:int) : void
      {
         var _loc3_:TaskInfo = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.taskInfos.length)
         {
            _loc3_ = this.taskInfos[_loc2_] as TaskInfo;
            if(_loc3_.id == param1)
            {
               if(_loc3_.type == TaskTypeDef.ESCORT)
               {
                  _loc3_.state = TaskStateDef.COMMITED;
                  if(this.getTaskInfosByType(TaskTypeDef.ESCORT).length > 3)
                  {
                     this.taskInfos.splice(_loc2_,1);
                  }
                  dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_COMMIT,_loc3_,null);
               }
               else if(_loc3_.type == TaskTypeDef.LARGESS)
               {
                  _loc3_.state = TaskStateDef.COMMITED;
                  if(this.getTaskInfosByType(TaskTypeDef.LARGESS).length > 4)
                  {
                     this.taskInfos.splice(_loc2_,1);
                  }
                  dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_COMMIT,_loc3_,null);
               }
               else if(_loc3_.type == TaskTypeDef.WEEKLY)
               {
                  _loc3_.state = TaskStateDef.COMMITED;
                  dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_COMMIT,_loc3_,null);
               }
               else
               {
                  this.taskInfos.splice(_loc2_,1);
                  dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_REMOVE,_loc3_,null);
               }
               return;
            }
            _loc2_++;
         }
      }
      
      public function removeTaskInfoById(param1:int) : void
      {
         var _loc3_:TaskInfo = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.taskInfos.length)
         {
            _loc3_ = this.taskInfos[_loc2_] as TaskInfo;
            if(_loc3_.id == param1)
            {
               this.taskInfos.splice(_loc2_,1);
               dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_REMOVE,_loc3_,null);
               return;
            }
            _loc2_++;
         }
      }
      
      public function replaceTaskInfo(param1:int, param2:TaskInfo) : void
      {
         var _loc4_:TaskInfo = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.taskInfos.length)
         {
            _loc4_ = this.taskInfos[_loc3_] as TaskInfo;
            if(_loc4_.id == param1)
            {
               this.taskInfos.splice(_loc3_,1,param2);
               dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFOS,_loc4_,null);
               return;
            }
            _loc3_++;
         }
      }
      
      public function getLengthByType(param1:int) : int
      {
         var _loc3_:TaskInfo = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.taskInfos)
         {
            if(_loc3_.type == param1)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function getTaskInfosByType(param1:int) : Array
      {
         var _loc5_:TaskInfo = null;
         var _loc2_:Array = [];
         var _loc3_:int = this.taskInfos.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.taskInfos[_loc4_];
            if(_loc5_.type == param1)
            {
               _loc2_.push(_loc5_);
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function getTaskInfos() : Array
      {
         return this.taskInfos;
      }
      
      public function getTaskInfo(param1:int) : TaskInfo
      {
         var _loc2_:TaskInfo = null;
         for each(_loc2_ in this.taskInfos)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getTaskInfoByName(param1:String) : TaskInfo
      {
         var _loc2_:TaskInfo = null;
         for each(_loc2_ in this.taskInfos)
         {
            if(_loc2_.cfg.name == param1 || _loc2_.cfg.name.indexOf(param1) == 0)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getTaskInfosByState(... rest) : Array
      {
         var _loc3_:TaskInfo = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.taskInfos)
         {
            if(rest.indexOf(_loc3_.state) != -1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function getTaskInfosByNpc(param1:int, param2:int) : Array
      {
         var _loc4_:TaskInfo = null;
         var _loc3_:Array = [];
         for each(_loc4_ in this.taskInfos)
         {
            if(_loc4_.state == TaskStateDef.COMMIT_ABLE || _loc4_.state == TaskStateDef.RECEIVED)
            {
               if(_loc4_.cfg.commitNpcSceneId == param1 && _loc4_.cfg.commitNpcId == param2)
               {
                  _loc3_.push(_loc4_);
               }
            }
            else if(_loc4_.cfg.receiveNpcSceneId == param1 && _loc4_.cfg.receiveNpcId == param2)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function setXiuxingTotalNum(param1:int) : void
      {
         this.xiuxingTotalNum = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_XIUXING_TOTAL_NUM,null,null);
      }
      
      public function getXiuxingTotalNum() : int
      {
         return this.xiuxingTotalNum;
      }
      
      public function setXiuxingDoneNum(param1:int) : void
      {
         this.xiuxingDoneNum = param1;
         dispModelEvent(ModelEvent.UPDATE,KEY_XIUXING_DONE_NUM,null,null);
      }
      
      public function getXiuxingDoneNum() : int
      {
         return this.xiuxingDoneNum;
      }
   }
}
