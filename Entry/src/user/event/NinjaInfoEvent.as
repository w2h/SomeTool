package user.event
{
   import flash.events.Event;
   
   public class NinjaInfoEvent extends Event
   {
      
      public static const CHANGED:String = "changed";
      
      public static const ALL_CHANGED:String = "allChanged";
       
      public var key:int;
      
      public var newValue:int;
      
      public var oldValue:int;
      
      public function NinjaInfoEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
