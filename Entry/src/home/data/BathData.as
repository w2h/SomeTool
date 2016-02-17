package home.data
{
   import flash.utils.Dictionary;
   
   public class BathData
   {
      
      public static const MAX_PLAYER_SHOW:int = 50;
       
      public var restSec:uint;
      
      public var restHelpBathTimes:uint;
      
      public var restBuyBathTimes:uint;
      
      public var playerInfoList:Dictionary;
      
      public var playerCount:int;
      
      public var isBathing:Boolean;
      
      public function BathData()
      {
         super();
      }
      
      public function destroy() : void
      {
         this.playerInfoList = null;
      }
   }
}
