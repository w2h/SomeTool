package ninja.command
{
   import RSModel.command.RSModelCommand;
   import flash.utils.Dictionary;
   import ninja.model.data.FormationInfo;
   
   public class RequestNinjaListCommand extends RSModelCommand
   {
       
      public var type:uint;
      
      public var ninjas:Dictionary;
      
      public var pull:Boolean;
      
      public var formation:FormationInfo;
      
      public function RequestNinjaListCommand(param1:uint = 4, param2:Boolean = true)
      {
         super();
         this.type = param1;
         this.pull = param2;
      }
   }
}
