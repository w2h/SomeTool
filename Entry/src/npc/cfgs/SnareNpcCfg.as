package npc.cfgs
{
   public class SnareNpcCfg extends BaseNpcCfg
   {
      
      public static const HIT_TYPE_RADIUS:int = 1;
      
      public static const HIT_TYPE_POINTS:int = 2;
       
      public var range:int;
      
      public var duration:int;
      
      public var snareType:int;
      
      public var interval:int;
      
      public var hurtInterval:int;
      
      public var hurt:int;
      
      public var loop:Boolean;
      
      public var hitType:int;
      
      public var hitRadius:int;
      
      public function SnareNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         name = param1.@name;
         this.duration = param1.@duration;
         this.interval = param1.@interval;
         this.hurt = param1.@hurt;
         this.loop = String(param1.@loop) == "1";
         this.hitType = param1.@hitType;
         this.hitRadius = param1.@hitRadius;
         this.hurtInterval = param1.@hurtInterval;
         this.snareType = param1.@snareType;
      }
   }
}
