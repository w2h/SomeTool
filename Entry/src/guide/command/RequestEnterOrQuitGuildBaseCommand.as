package guide.command
{
   import guild.command.BaseGuildCommand;
   
   public class RequestEnterOrQuitGuildBaseCommand extends BaseGuildCommand
   {
       
      public var type:int;
      
      public var gotoNpcId:int;
      
      public var useListId:Boolean;
      
      public var gotoSceneId:int;
      
      public function RequestEnterOrQuitGuildBaseCommand(param1:int, param2:int = -1, param3:Boolean = false, param4:int = -1)
      {
         super();
         this.type = param1;
         this.gotoNpcId = param2;
         this.useListId = param3;
         this.gotoSceneId = param4;
      }
   }
}
