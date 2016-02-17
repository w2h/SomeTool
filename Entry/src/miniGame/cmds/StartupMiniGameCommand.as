package miniGame.cmds
{
   public class StartupMiniGameCommand extends BaseMiniGameCommand
   {
       
      public var id:int;
      
      public var finishFun:Function;
      
      public var data:Object;
      
      public var ext:int;
      
      public function StartupMiniGameCommand(param1:int, param2:Function, param3:Object = null, param4:int = 0)
      {
         super();
         this.id = param1;
         this.finishFun = param2;
         this.data = param3;
         this.ext = param4;
      }
   }
}
