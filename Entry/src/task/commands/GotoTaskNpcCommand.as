package task.commands
{
   import base.NarutoCommand;
   import user.def.UserStateDef;
   
   public class GotoTaskNpcCommand extends NarutoCommand
   {
       
      public function GotoTaskNpcCommand()
      {
         super();
         this.addBeginStateInfo(UserStateDef.BASE_WALK_TO_DEST,true);
         this.addEndStateInfo(UserStateDef.BASE_WALK_TO_DEST,false);
      }
   }
}
