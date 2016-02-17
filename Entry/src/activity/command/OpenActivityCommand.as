package activity.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenActivityCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public function OpenActivityCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
