package player.events
{
   import flash.events.Event;
   
   public class PlayerDataEvent extends Event
   {
      
      public static const POSITION_UPDATE:String = "positionUpdate";
      
      public static const PROPERTY_UPDATE:String = "propertyUpdate";
      
      public static const MULTI_PROPERTY_UPDATE:String = "multiPropertyUpdate";
      
      public static const TITLE_UPDATE:String = "titleUpdate";
      
      public static const DESTROY:String = "destroy";
       
      public var property:String;
      
      public var multiProperties:Array;
      
      public function PlayerDataEvent(param1:String, param2:String = "")
      {
         super(param1);
         this.property = param2;
      }
   }
}
