package rumorPlot.extPlot.script
{
   import rumorPlot.plot.script.Script;
   import sound.commands.PlaySoundCommand;
   
   public class PlaySoundScript extends Script
   {
       
      public function PlaySoundScript()
      {
         super();
      }
      
      override public function activate() : void
      {
         var _loc1_:int = int(scriptInfo.paramArg.paramArgVect[0].value);
         var _loc2_:int = int(scriptInfo.paramArg.paramArgVect[1].value);
         new PlaySoundCommand(_loc1_,_loc2_).call();
         super.activate();
      }
      
      override public function deactivate(param1:Boolean = false) : void
      {
         super.deactivate(param1);
      }
   }
}
