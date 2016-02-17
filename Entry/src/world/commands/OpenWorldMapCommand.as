package world.commands
{
   public class OpenWorldMapCommand extends BaseWorldCommand
   {
       
      public var autoClickBtn:Boolean = false;
      
      public function OpenWorldMapCommand(param1:Boolean = false)
      {
         super();
         this.autoClickBtn = param1;
      }
   }
}
