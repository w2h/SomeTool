package npc.cfgs
{
   public class PortalNpcCfg extends BaseNpcCfg
   {
       
      public var portalType:int;
      
      public var portalRange:int;
      
      public var requireLevel:int;
      
      public var toSceneType:int;
      
      public var toSceneId:int;
      
      public var targerX:int;
      
      public var targerY:int;
      
      public var delayShow:Boolean;
      
      public var doneTaskShow:String;
      
      public function PortalNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         this.portalType = param1.@triggerType;
         this.portalRange = param1.@triggerRange;
         this.requireLevel = param1.@triggerLevel;
         this.toSceneType = param1.@toSceneType;
         this.toSceneId = param1.@toSceneId;
         this.targerX = param1.@targetX;
         this.targerY = param1.@targetY;
         this.delayShow = String(param1.@delayShow) == "1";
         this.doneTaskShow = param1.@doneTaskShow;
      }
   }
}
