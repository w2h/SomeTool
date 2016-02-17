package activity.firstSave
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class FirstSaveOpenViewCmd extends NarutoCommand
   {
       
      public function FirstSaveOpenViewCmd()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
