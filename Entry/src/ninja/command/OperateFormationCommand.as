package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.FormationInfo;
   
   public class OperateFormationCommand extends RSModelCommand
   {
       
      public var cmd:uint;
      
      public var id:uint;
      
      public var sequence:uint;
      
      public var location:uint;
      
      public var formation:FormationInfo;
      
      public function OperateFormationCommand(param1:uint, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.cmd = param1;
         this.sequence = param2;
         this.location = param3;
         this.id = param4;
      }
   }
}
