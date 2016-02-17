package newplot.cmds
{
   public class RequestPlayNewPlotCommand extends BaseNewPlotCommand
   {
       
      public var id:int;
      
      public var doneFun:Function;
      
      public var changeIdFun:Function;
      
      public var npcId:int;
      
      public function RequestPlayNewPlotCommand(param1:int = 999999, param2:Function = null, param3:Function = null, param4:int = 0)
      {
         super();
         this.id = param1;
         this.doneFun = param2;
         this.changeIdFun = param3;
         this.npcId = param4;
      }
   }
}
