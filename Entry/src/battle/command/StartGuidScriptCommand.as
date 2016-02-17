package battle.command
{
   public class StartGuidScriptCommand extends BattleCommand
   {
       
      public var delay:int;
      
      public var scriptId:int;
      
      public function StartGuidScriptCommand(param1:int, param2:int)
      {
         super();
         this.delay = param2;
         this.scriptId = param1;
      }
   }
}
