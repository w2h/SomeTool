package player.commands
{
   public class SetOtherPlayersBodyVisibleCommand extends BasePlayerCommand
   {
       
      public var visible:Boolean;
      
      public function SetOtherPlayersBodyVisibleCommand(param1:Boolean)
      {
         super();
         this.visible = param1;
      }
   }
}
