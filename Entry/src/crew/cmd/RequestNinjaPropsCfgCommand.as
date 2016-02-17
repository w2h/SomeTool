package crew.cmd
{
   import RSModel.command.RSModelCommand;
   import crew.data.NinjaPropsCfgInfo;
   
   public class RequestNinjaPropsCfgCommand extends RSModelCommand
   {
       
      public var ids:Vector.<uint>;
      
      public var props:Vector.<NinjaPropsCfgInfo>;
      
      public function RequestNinjaPropsCfgCommand(param1:Vector.<uint>)
      {
         super();
         this.ids = param1;
      }
   }
}
