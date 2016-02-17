package dungeon.command
{
   import RSModel.command.RSModelCommand;
   import dungeon.proxy.IDailySpecialDungeonClient;
   
   public class RegisterDailySpecialDungeonClientCommand extends RSModelCommand
   {
       
      public var client:IDailySpecialDungeonClient;
      
      public function RegisterDailySpecialDungeonClientCommand(param1:IDailySpecialDungeonClient)
      {
         super();
         this.client = param1;
      }
   }
}
