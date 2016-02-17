package activity.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class Open7daysViewCmd extends NarutoCommand
   {
       
      public function Open7daysViewCmd(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
