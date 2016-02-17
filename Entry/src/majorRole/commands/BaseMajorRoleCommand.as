package majorRole.commands
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class BaseMajorRoleCommand extends NarutoCommand
   {
       
      public function BaseMajorRoleCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.MAJOR_ROLE;
      }
   }
}
