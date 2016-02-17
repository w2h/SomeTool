package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.FormationInfo;
   import ninja.model.data.NinjaInfo;
   
   public class RequestFormationTroopCommand extends RSModelCommand
   {
      
      public static const PACKAGE:uint = 1;
      
      public static const STORAGE:uint = 2;
       
      public var sourceType:uint;
      
      public var flag:uint;
      
      public var formation:FormationInfo;
      
      public var storageNinjas:Vector.<NinjaInfo>;
      
      public var packageNinjas:Vector.<NinjaInfo>;
      
      public function RequestFormationTroopCommand(param1:uint, param2:uint = 2)
      {
         super();
         this.sourceType = param1;
         this.flag = param2;
      }
   }
}
