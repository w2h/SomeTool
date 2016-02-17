package npc.cfgs
{
   import flash.geom.Point;
   
   public class KnowledgeNpcCfg extends BaseNpcCfg
   {
       
      public function KnowledgeNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         var _loc2_:Array = null;
         super.parse(param1);
         name = param1.@name;
         if(param1.hasOwnProperty("@destPixelPoint"))
         {
            _loc2_ = String(param1.@destPixelPoint).split(",");
            destPixelPoint = new Point(_loc2_[0],_loc2_[1]);
         }
      }
   }
}
