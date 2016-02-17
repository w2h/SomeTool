package dungeon.event
{
   import flash.events.Event;
   
   public class DungeonEvent extends Event
   {
      
      public static const CHANGE:String = "change";
      
      public static const REMAIN_NUM_CHANGE:String = "remainNumChange";
      
      public static const CURRENT_DUNGEON_CHANGE:String = "currentDungeonChange";
      
      public static const ELITE_DUNGEON_CHANGE:String = "eliteDungeonChange";
      
      public static const PLOT_DUNGEON_CHANGE:String = "plotDungeonChange";
      
      public static const FOISON_DUNGEON_CHANGE:String = "foisonDungeonChange";
      
      public static const TREASURE_DUNGEON_CHANGE:String = "treasureDungeonChange";
      
      public static const FORCAST_DUNGEON_CHANGE:String = "forcastDungeonChange";
      
      public static const SELECT_CHAPTER:String = "selectChapter";
      
      public static const WIPE_OUT_CHANGE:String = "wipeOutChange";
      
      public static const WIPE_OUT_INCOME_CHANGE:String = "wipeOutIncomeChange";
      
      public static const PASS_COUNT_CHANGE:String = "passCountChange";
       
      public var data;
      
      public function DungeonEvent(param1:String, param2:* = null, param3:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,false);
      }
      
      override public function clone() : Event
      {
         return new DungeonEvent(type,this.data,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("DungeonEvent","type","data","bubbles","cancelable","eventPhase");
      }
   }
}
