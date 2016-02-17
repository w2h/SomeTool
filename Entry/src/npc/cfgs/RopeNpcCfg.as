package npc.cfgs
{
   import flash.geom.Point;
   
   public class RopeNpcCfg extends BaseNpcCfg
   {
       
      public var pointOne:Point;
      
      public var pointTwo:Point;
      
      public var interactable:Boolean;
      
      public function RopeNpcCfg()
      {
         super();
      }
      
      override public function parse(param1:XML) : void
      {
         super.parse(param1);
         var _loc2_:Array = String(param1.@pointOne).split(",");
         this.pointOne = new Point(_loc2_[0],_loc2_[1]);
         _loc2_ = String(param1.@pointTwo).split(",");
         this.pointTwo = new Point(_loc2_[0],_loc2_[1]);
         this.interactable = String(param1.@interactable) != "2";
      }
   }
}
