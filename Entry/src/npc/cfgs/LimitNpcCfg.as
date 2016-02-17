package npc.cfgs
{
   import flash.geom.Point;
   
   public class LimitNpcCfg extends BaseNpcCfg
   {
       
      public function LimitNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         var _loc2_:Array = null;
         this.xml = param1;
         name = param1.@name;
         type = param1.@npcType;
         id = param1.@id;
         res = param1.@res;
         if(param1.hasOwnProperty("@destPixelPoint"))
         {
            _loc2_ = String(param1.@destPixelPoint).split(",");
            destPixelPoint = new Point(_loc2_[0],_loc2_[1]);
         }
      }
   }
}
