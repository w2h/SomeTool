package rank.command
{
   import RSModel.command.RSModelCommand;
   import rank.model.TitleModel;
   
   public class RequestTitleInfoCommand extends RSModelCommand
   {
       
      public var model:TitleModel;
      
      public function RequestTitleInfoCommand()
      {
         super();
      }
   }
}
