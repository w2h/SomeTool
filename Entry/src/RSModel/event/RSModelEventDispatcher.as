package RSModel.event
{
   import flash.events.EventDispatcher;
   
   [Event(name="formationChange",type="RSModel.event.RSModelEvent")]
   [Event(name="defaultFormationChange",type="RSModel.event.RSModelEvent")]
   [Event(name="ninjaPackageChange",type="RSModel.event.RSModelEvent")]
   [Event(name="ninjaStorageChange",type="RSModel.event.RSModelEvent")]
   [Event(name="defaultNinjaStorageChange",type="RSModel.event.RSModelEvent")]
   [Event(name="defaultNinjaPackageChange",type="RSModel.event.RSModelEvent")]
   public class RSModelEventDispatcher extends EventDispatcher
   {
       
      public function RSModelEventDispatcher()
      {
         super(null);
      }
   }
}
