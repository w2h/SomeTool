package expeditionary.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenExpeditionaryCommand extends NarutoCommand
   {
       
      public var isRefresh:Boolean = true;
      
      public var isShowFinish:Boolean = true;
      
      public function OpenExpeditionaryCommand(param1:Boolean = true, param2:Boolean = false)
      {
         this.isRefresh = param1;
         this.isShowFinish = param2;
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.EXPEDITIONARY;
      }
   }
}
