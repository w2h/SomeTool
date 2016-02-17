package dungeon.event
{
   import flash.events.Event;
   
   public class UniversalWipeoutEvent extends Event
   {
      
      public static const INIT:String = "init";
      
      public static const START:String = "start";
      
      public static const CANCEL:String = "cancel";
      
      public static const COMPLETE:String = "complete";
      
      public static const NOTIFY:String = "notify";
      
      public static const CLOCK_TICK:String = "clockTick";
      
      public static const CLOCK_COMPLETE:String = "clockComplete";
      
      public static const INCOME_CHANGE:String = "incomeChange";
      
      public static const WIPE_OUT_CHANGE:String = "wipeOutChange";
       
      public var data;
      
      public function UniversalWipeoutEvent(param1:String, param2:* = null, param3:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,false);
      }
      
      override public function clone() : Event
      {
         return new UniversalWipeoutEvent(type,this.data,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("UniversalWipeOutEvent","type","data","bubbles","cancelable","eventPhase");
      }
   }
}
