package team.cmd
{
   public class OpenCreateTeamPanelCommand extends BaseTeamCommand
   {
       
      public var defaultType:int;
      
      public function OpenCreateTeamPanelCommand(param1:int = 1)
      {
         super();
         this.defaultType = param1;
      }
   }
}
