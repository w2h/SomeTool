package npc.cfgs
{
   public class ObstacleNpcCfg extends BaseNpcCfg
   {
       
      public var radius:int;
      
      public var vanished:Boolean = false;
      
      public var appearPortalId:int;
      
      public var interactable:Boolean;
      
      public function ObstacleNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         this.radius = param1.@radius;
         this.appearPortalId = param1.@appearPortalId;
         this.interactable = String(param1.@interactable) != "2";
      }
   }
}
