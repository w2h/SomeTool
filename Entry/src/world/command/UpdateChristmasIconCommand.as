package world.command
{
   import world.commands.BaseWorldCommand;
   
   public class UpdateChristmasIconCommand extends BaseWorldCommand
   {
       
      public var status:int;
      
      public var type:int;
      
      public var id:int;
      
      public var mapId:int;
      
      public function UpdateChristmasIconCommand(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this.status = param1;
         this.mapId = param2;
         this.type = param3;
         this.id = param4;
      }
   }
}
