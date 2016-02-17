package team.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenTeamPanelCommand extends Command
   {
       
      public var typeIndex:int;
      
      public function OpenTeamPanelCommand(param1:int = 0)
      {
         super();
         this.typeIndex = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TEAM;
      }
   }
}
