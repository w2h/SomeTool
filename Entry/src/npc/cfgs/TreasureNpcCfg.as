package npc.cfgs
{
   public class TreasureNpcCfg extends BaseNpcCfg
   {
       
      public var treasureId:int;
      
      public var treasureIndex:int;
      
      public function TreasureNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         this.treasureId = param1.@treasureId;
         this.treasureIndex = param1.@treasureIndex;
      }
   }
}
