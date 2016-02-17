package player.commands
{
   import flash.geom.Point;
   import user.def.UserStateDef;
   
   public class CrossSceneGotoPixelPointCommand extends BasePlayerCommand
   {
       
      public var sceneId:int;
      
      public var point:Point;
      
      public function CrossSceneGotoPixelPointCommand(param1:int, param2:int, param3:int)
      {
         super();
         this.sceneId = param1;
         this.point = new Point(param2,param3);
         this.addEnableStateInfo(UserStateDef.ACTION_CAN_WALK,true);
      }
   }
}
