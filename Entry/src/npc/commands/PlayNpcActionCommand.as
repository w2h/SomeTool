package npc.commands
{
   public class PlayNpcActionCommand extends BaseNpcCommand
   {
       
      public var id:int;
      
      public var useListId:Boolean;
      
      public var action:String;
      
      public var loop:Boolean;
      
      public function PlayNpcActionCommand(param1:int, param2:Boolean, param3:String, param4:Boolean = false)
      {
         super();
         this.id = param1;
         this.useListId = param2;
         this.action = param3;
         this.loop = param4;
      }
   }
}
