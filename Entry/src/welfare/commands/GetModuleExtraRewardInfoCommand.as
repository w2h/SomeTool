package welfare.commands
{
   import RSModel.command.RSModelCommand;
   import serverProto.weekCycle.ProtoModAdditionInfo;
   
   public class GetModuleExtraRewardInfoCommand extends RSModelCommand
   {
       
      public var moduleId:int;
      
      public var data:ProtoModAdditionInfo;
      
      public var multiplyStr:String;
      
      public function GetModuleExtraRewardInfoCommand(param1:int)
      {
         super();
         this.moduleId = param1;
      }
   }
}
