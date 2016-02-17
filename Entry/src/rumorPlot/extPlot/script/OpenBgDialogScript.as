package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.OpenBgDialogCommand;
   
   public class OpenBgDialogScript extends Script
   {
       
      public function OpenBgDialogScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:String = String(scriptInfo.paramArg.paramArgVect[0].value);
         var _loc2_:String = String(scriptInfo.paramArg.paramArgVect[1].value);
         var _loc3_:Number = Number(scriptInfo.paramArg.paramArgVect[2].value);
         var _loc4_:OpenBgDialogCommand = new OpenBgDialogCommand(_loc1_,_loc2_,_loc3_);
         _loc4_.call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
