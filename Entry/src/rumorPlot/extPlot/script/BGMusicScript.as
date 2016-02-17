package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import rumorPlot.command.BGMusicCommand;
   
   public class BGMusicScript extends Script
   {
       
      public function BGMusicScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:int = int(scriptInfo.paramArg.paramArgVect[0].value);
         var _loc2_:String = String(scriptInfo.paramArg.paramArgVect[1].value);
         new BGMusicCommand(_loc1_,_loc2_).call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
