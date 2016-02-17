package throughTheBeast.events
{
   import flash.events.Event;
   
   public class BeastDargEvent extends Event
   {
      
      public static const START_DRAG_BEAST:String = "startDragNinja";
      
      public static const STOP_DRAG_BEAST:String = "stopDragNinja";
       
      public var data;
      
      public function BeastDargEvent(param1:String, param2:* = null, param3:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,false);
      }
      
      override public function clone() : Event
      {
         return new BeastDargEvent(type,this.data,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("BeastDargEvent","type","data","bubbles","cancelable","eventPhase");
      }
   }
}
