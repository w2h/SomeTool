package dungeon.wipeout
{
   import flash.events.EventDispatcher;
   import dungeon.model.data.UniversalWipeoutInfo;
   import dungeon.event.UniversalWipeoutEvent;
   import com.tencent.morefun.naruto.render.TimeTicker;
   
   [Event(name="clockComplete",type="dungeon.event.UniversalWipeoutEvent")]
   [Event(name="clockTick",type="dungeon.event.UniversalWipeoutEvent")]
   public class UniversalWipeoutClock extends EventDispatcher
   {
       
      private var _running:Boolean;
      
      private var _data:UniversalWipeoutInfo;
      
      public function UniversalWipeoutClock()
      {
         super();
      }
      
      private function updateRemainTime(param1:uint) : void
      {
         this._data.remainTime = param1 / 1000;
         dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.CLOCK_TICK));
         if(!param1)
         {
            this._running = false;
            dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.CLOCK_COMPLETE));
         }
      }
      
      public function get remainTime() : uint
      {
         return this._data?this._data.remainTime:0;
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get data() : UniversalWipeoutInfo
      {
         return this._data;
      }
      
      public function set data(param1:UniversalWipeoutInfo) : void
      {
         this._data = param1;
         if(this._data && this._data.remainTime > 0)
         {
            this._running = true;
            TimeTicker.register(this.updateRemainTime,this._data.remainTime * 1000);
            dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.CLOCK_TICK));
         }
         else
         {
            this._running = false;
            TimeTicker.terminate(this.updateRemainTime);
         }
      }
   }
}
