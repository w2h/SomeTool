package npc.commands
{
   public class AddHomeNinjaNpcCommand extends BaseNpcCommand
   {
       
      public var type:int;
      
      public var npcList:Array;
      
      public function AddHomeNinjaNpcCommand(param1:int)
      {
         super();
         this.type = param1;
      }
   }
}
