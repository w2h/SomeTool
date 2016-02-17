package rank.command
{
   import RSModel.command.RSModelCommand;
   import rank.model.data.RankTitleCfgInfo;
   
   public class SetTitleCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var title:RankTitleCfgInfo;
      
      public function SetTitleCommand(param1:uint)
      {
         super();
         this.id = param1;
      }
   }
}
