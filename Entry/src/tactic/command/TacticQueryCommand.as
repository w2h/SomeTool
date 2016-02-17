package tactic.command
{
   import RSModel.command.RSModelCommand;
   import tactic.model.TacticUniqueModel;
   
   public class TacticQueryCommand extends RSModelCommand
   {
       
      public var type:uint;
      
      public var model:TacticUniqueModel;
      
      public function TacticQueryCommand(param1:uint)
      {
         super();
         this.type = param1;
      }
   }
}
