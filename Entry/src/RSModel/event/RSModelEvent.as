package RSModel.event
{
   import flash.events.Event;
   
   public class RSModelEvent extends Event
   {
      
      public static const DEFAULT_NINJA_PACKAGE_CHANGE:String = "defaultNinjaPackageChange";
      
      public static const DEFAULT_NINJA_STORAGE_CHANGE:String = "defaultNinjaStorageChange";
      
      public static const DEFAULT_FORMATION_CHANGE:String = "defaultFormationChange";
      
      public static const NINJA_PACKAGE_CHANGE:String = "ninjaPackageChange";
      
      public static const NINJA_STORAGE_CHANGE:String = "ninjaStorageChange";
      
      public static const FORMATION_CHANGE:String = "formationChange";
       
      public var id:uint;
      
      public var data;
      
      public function RSModelEvent(param1:String, param2:* = null, param3:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,false);
      }
      
      override public function clone() : Event
      {
         return new RSModelEvent(type,this.data,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("RSModelEvent","type","data","bubbles","cancelable","eventPhase");
      }
   }
}
