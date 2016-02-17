package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.geom.Point;
   import def.PluginDef;
   
   public class CouponChangeAnimationCommand extends Command
   {
       
      public var from:Point;
      
      public var to:Point;
      
      public function CouponChangeAnimationCommand(param1:Point, param2:Point)
      {
         super();
         this.from = param1;
         this.to = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
