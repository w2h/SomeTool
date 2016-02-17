package team.cmd
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class BaseTeamCommand extends NarutoCommand
   {
       
      public function BaseTeamCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TEAM;
      }
   }
}
