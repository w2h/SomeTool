package battle.data
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.ByteArray;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import battle.def.BattleKeyDef;
   import def.ModelDef;
   
   public class BattleInfo extends BaseModel
   {
      
      public static const FAILD_REASON_LEAVE:int = 1;
       
      private var _id:int;
      
      private var _clientId:int;
      
      public var type:int;
      
      public var stroyId:int;
      
      public var isWin:Boolean;
      
      private var _replayData:ByteArray;
      
      private var _isFighting:Boolean;
      
      public var faildReason:int;
      
      public function BattleInfo()
      {
         this._replayData = new ByteArray();
         super(ModelDef.BATTLE);
      }
      
      public function get replayData() : ByteArray
      {
         return this._replayData;
      }
      
      public function set replayData(param1:ByteArray) : void
      {
         this._replayData = param1;
      }
      
      public function get isFighting() : Boolean
      {
         return this._isFighting;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set clientId(param1:int) : void
      {
         this._clientId = param1;
      }
      
      public function get clientId() : int
      {
         return this._clientId;
      }
      
      public function battleStart() : void
      {
         this._isFighting = true;
         this.faildReason = 0;
         this.dispModelEvent(ModelEvent.UPDATE,BattleKeyDef.START);
      }
      
      public function battleEnd() : void
      {
         this._isFighting = false;
         this.dispModelEvent(ModelEvent.UPDATE,BattleKeyDef.END);
      }
      
      public function battleFail(param1:int = 0) : void
      {
         this.faildReason = param1;
         this._isFighting = false;
         this.dispModelEvent(ModelEvent.UPDATE,BattleKeyDef.FAIL);
      }
      
      public function showFightScene() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE,BattleKeyDef.SHOW_FIGHT_SCENE);
      }
      
      public function prewarStart() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE,BattleKeyDef.PREWAR_START);
      }
      
      public function prewarEnd() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE,BattleKeyDef.PREWAR_END);
      }
      
      public function showResult() : void
      {
         this.dispModelEvent(ModelEvent.UPDATE,BattleKeyDef.SHOW_RESULT);
      }
   }
}
