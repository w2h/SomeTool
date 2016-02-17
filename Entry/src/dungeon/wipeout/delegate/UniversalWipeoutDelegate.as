package dungeon.wipeout.delegate
{
   import flash.events.EventDispatcher;
   import dungeon.model.UniversalWipeoutModel;
   import com.tencent.morefun.naruto.base.interfaces.ISocketServer;
   import dungeon.wipeout.UniversalWipeoutClock;
   import com.tencent.morefun.naruto.util.padding;
   import dungeon.def.UniversalWipeoutStateDef;
   import dungeon.model.data.UniversalWipeoutInfo;
   
   [Event(name="passCountChange",type="dungeon.event.DungeonEvent")]
   [Event(name="complete",type="dungeon.event.UniversalWipeoutEvent")]
   [Event(name="notify",type="dungeon.event.UniversalWipeoutEvent")]
   [Event(name="cancel",type="dungeon.event.UniversalWipeoutEvent")]
   [Event(name="start",type="dungeon.event.UniversalWipeoutEvent")]
   [Event(name="init",type="dungeon.event.UniversalWipeoutEvent")]
   public class UniversalWipeoutDelegate extends EventDispatcher
   {
       
      protected var _model:UniversalWipeoutModel;
      
      protected var _server:ISocketServer;
      
      protected var _clock:UniversalWipeoutClock;
      
      public function UniversalWipeoutDelegate(param1:ISocketServer)
      {
         super();
         this._model = new UniversalWipeoutModel(this.type);
         this._model.data = new UniversalWipeoutInfo(this.type);
         this._server = param1;
         this._clock = new UniversalWipeoutClock();
      }
      
      public function requestWipeoutInfo() : void
      {
      }
      
      public function start(param1:Object) : void
      {
      }
      
      public function cancel() : void
      {
      }
      
      public function closeRelatedWindow() : void
      {
      }
      
      public function clearWipeoutRewards() : void
      {
      }
      
      public function validateCountInput(param1:uint) : Boolean
      {
         return false;
      }
      
      public function updateCountInput(param1:uint) : void
      {
      }
      
      public function recommendCountInput() : uint
      {
         return 0;
      }
      
      public function caculateWipeoutCost() : uint
      {
         return 0;
      }
      
      public function caculateWipeoutTime() : String
      {
         return "00:00:00";
      }
      
      public final function formatTimeText(param1:uint) : String
      {
         var _loc2_:String = padding(param1 % 60);
         var param1:uint = param1 / 60 >> 0;
         _loc2_ = padding(param1 % 60) + ":" + _loc2_;
         param1 = param1 / 60 >> 0;
         _loc2_ = padding(param1) + ":" + _loc2_;
         return _loc2_;
      }
      
      public function dispose() : void
      {
         if(this._model)
         {
            this._model.dispose();
            this._model = null;
         }
         this._server = null;
         if(this._clock)
         {
            this._clock.data = null;
            this._clock = null;
         }
      }
      
      public function get type() : int
      {
         return 0;
      }
      
      public function get model() : UniversalWipeoutModel
      {
         return this._model;
      }
      
      public function get state() : uint
      {
         return this._model?this._model.state:UniversalWipeoutStateDef.WAIT;
      }
      
      public function get clock() : UniversalWipeoutClock
      {
         return this._clock;
      }
   }
}
