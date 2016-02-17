package activity.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class Close7daysViewCmd extends NarutoCommand
   {
       
      public function Close7daysViewCmd(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
