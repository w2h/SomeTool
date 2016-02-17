package exam.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import exam.data.ExamInfoData;
   import exam.data.ExamLevelData;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import exam.def.ExamModelKeys;
   import def.ModelDef;
   
   public class ExamModel extends BaseModel
   {
       
      private var _data:ExamInfoData;
      
      private var _levelData:ExamLevelData;
      
      private var _totalRaidSecondsLeft:int;
      
      public function ExamModel()
      {
         super(ModelDef.EXAM);
         this._totalRaidSecondsLeft = 0;
      }
      
      public function finalize() : void
      {
      }
      
      public function get data() : ExamInfoData
      {
         return this._data;
      }
      
      public function set data(param1:ExamInfoData) : void
      {
         if(param1 == this._data)
         {
            return;
         }
         this._data = param1;
         this.dispModelEvent(ModelEvent.UPDATE,ExamModelKeys.DATA_UPDATE,null,this._data);
      }
      
      public function get levelData() : ExamLevelData
      {
         return this._levelData;
      }
      
      public function set levelData(param1:ExamLevelData) : void
      {
         if(param1 == this._levelData)
         {
            return;
         }
         this._levelData = param1;
         this.dispModelEvent(ModelEvent.UPDATE,ExamModelKeys.LEVEL_DATA_UPDATE,null,this._levelData);
      }
      
      public function get totalRaidSecondsLeft() : int
      {
         return this._totalRaidSecondsLeft;
      }
      
      public function set totalRaidSecondsLeft(param1:int) : void
      {
         if(param1 == this._totalRaidSecondsLeft)
         {
            return;
         }
         var _loc2_:int = this._totalRaidSecondsLeft;
         this._totalRaidSecondsLeft = param1;
         this.dispModelEvent(ModelEvent.UPDATE,ExamModelKeys.TOTAL_RAID_SECONDS_LEFT_UPDATE,_loc2_,this._totalRaidSecondsLeft);
      }
   }
}
