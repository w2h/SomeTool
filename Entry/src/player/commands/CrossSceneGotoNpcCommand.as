package player.commands
{
   import user.def.UserStateDef;
   
   public class CrossSceneGotoNpcCommand extends BasePlayerCommand
   {
       
      public var sceneId:int;
      
      public var npcId:int;
      
      public var shorten:int;
      
      public var autoClick:Boolean;
      
      public var useListId:Boolean;
      
      public function CrossSceneGotoNpcCommand(param1:int, param2:int, param3:int = 100, param4:Boolean = true, param5:Boolean = false)
      {
         super();
         this.sceneId = param1;
         this.npcId = param2;
         this.autoClick = param4;
         this.useListId = param5;
         this.shorten = param3;
         this.addEnableStateInfo(UserStateDef.ACTION_CAN_WALK,true);
      }
   }
}
