package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.FormationInfo;
   
   public class RequestFormationCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var formation:FormationInfo;
      
      public function RequestFormationCommand(param1:uint)
      {
         super();
         this.id = param1;
      }
   }
}
