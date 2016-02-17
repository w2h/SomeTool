package player.commands
{
   import flash.geom.Point;
   
   public class PlayerJumpCommand extends BasePlayerCommand
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public var ninja:uint;
      
      public var location:Point;
      
      public function PlayerJumpCommand(param1:uint, param2:uint, param3:uint, param4:uint, param5:Point)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
         this.ninja = param4;
         this.location = param5;
      }
   }
}
