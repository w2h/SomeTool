package ninja.event
{
   import flash.events.Event;
   import ninja.model.data.FormationInfo;
   import ninja.model.data.NinjaInfo;
   
   public class NinjaModelEvent extends Event
   {
      
      public static const PACKAGE_CHANGE:String = "packageChange";
      
      public static const FORMATION_CHANGE:String = "formationChange";
      
      public static const STORAGE_CHANGE:String = "storageChange";
       
      public var id:uint;
      
      public var formation:FormationInfo;
      
      public var ninjas:Vector.<NinjaInfo>;
      
      public function NinjaModelEvent(param1:String, param2:Boolean = false)
      {
         super(param1,param2,false);
      }
      
      override public function clone() : Event
      {
         return new NinjaModelEvent(type,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("NinjaModelEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
