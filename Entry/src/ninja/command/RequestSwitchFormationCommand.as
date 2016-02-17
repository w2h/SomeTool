package ninja.command
{
   import RSModel.command.RSModelCommand;
   import serverProto.formation.ProtoSwitchSaveFormationRsp;
   
   public class RequestSwitchFormationCommand extends RSModelCommand
   {
       
      public var reqIndex:int;
      
      public var reqType:int;
      
      public var rsp:ProtoSwitchSaveFormationRsp;
      
      public function RequestSwitchFormationCommand()
      {
         super();
      }
   }
}
