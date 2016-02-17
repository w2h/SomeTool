package pvpBattlefield.event
{
   import flash.events.Event;
   
   public class PvpBattleFieldSyncTimeEvent extends Event
   {
       
      public var changeType:int = 0;
      
      public var sec:int = 0;
      
      public function PvpBattleFieldSyncTimeEvent(param1:int, param2:int)
      {
         this.changeType = param1;
         this.sec = param2;
         super("PvpBattleFieldSyncTimeEvent");
      }
   }
}
