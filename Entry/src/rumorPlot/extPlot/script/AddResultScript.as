package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.RumorSendServerCommand;
   
   public class AddResultScript extends Script
   {
       
      public function AddResultScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:int = int(scriptInfo.paramArg.paramArgVect[0].value);
         var _loc2_:RumorSendServerCommand = new RumorSendServerCommand(RumorSendServerCommand.TYPE_RESULT,curNode);
         _loc2_.extraData = _loc1_;
         _loc2_.call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
