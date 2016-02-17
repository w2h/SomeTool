package npc.cfgs
{
   public class InvisibleNpcCfg extends BaseNpcCfg
   {
       
      public var vanished:Boolean = false;
      
      public var appearPortalId:int;
      
      public var interactable:Boolean;
      
      public function InvisibleNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         this.appearPortalId = param1.@appearPortalId;
         this.interactable = String(param1.@interactable) != "2";
      }
   }
}
