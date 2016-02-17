package expeditionary.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseExpeditionaryCommand extends NarutoCommand
   {
       
      public var errorCode:int;
      
      public function CloseExpeditionaryCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.EXPEDITIONARY;
      }
   }
}
