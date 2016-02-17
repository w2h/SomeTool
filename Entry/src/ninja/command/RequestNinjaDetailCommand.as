package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.NinjaInfo;
   
   public class RequestNinjaDetailCommand extends RSModelCommand
   {
       
      public var ninjaSeqArr:Array;
      
      public var ninjaInfos:Vector.<NinjaInfo>;
      
      public function RequestNinjaDetailCommand(param1:Array)
      {
         super();
         this.ninjaSeqArr = param1;
      }
   }
}
