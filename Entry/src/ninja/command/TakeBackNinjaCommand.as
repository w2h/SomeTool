package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.FormationInfo;
   
   public class TakeBackNinjaCommand extends RSModelCommand
   {
       
      public var sequence:uint;
      
      public var formation:FormationInfo;
      
      public function TakeBackNinjaCommand(param1:uint)
      {
         super();
         this.sequence = param1;
      }
   }
}
