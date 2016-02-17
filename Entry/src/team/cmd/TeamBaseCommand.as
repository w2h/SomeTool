package team.cmd
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class TeamBaseCommand extends NarutoCommand
   {
       
      public function TeamBaseCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TEAM;
      }
   }
}
