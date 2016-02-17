package bag.data
{
   public class EquipFumoInfo
   {
       
      public var fumoLevel:int;
      
      public var maxLevel:int;
      
      public var tmpMaxLevel:int;
      
      public var blessValue:int;
      
      public var maxBlessValue:int;
      
      public var levelAttr:bag.data.EquipFumoLevelAttr;
      
      public var inlayInfoAry:Array;
      
      public function EquipFumoInfo()
      {
         super();
      }
      
      public function clone() : EquipFumoInfo
      {
         var _loc3_:EquipFumoInlayInfo = null;
         var _loc1_:EquipFumoInfo = new EquipFumoInfo();
         _loc1_.fumoLevel = this.fumoLevel;
         _loc1_.maxBlessValue = this.maxBlessValue;
         _loc1_.blessValue = this.blessValue;
         _loc1_.maxLevel = this.maxLevel;
         _loc1_.tmpMaxLevel = this.tmpMaxLevel;
         _loc1_.levelAttr = this.levelAttr.clone();
         _loc1_.inlayInfoAry = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.inlayInfoAry.length)
         {
            _loc3_ = this.inlayInfoAry[_loc2_];
            if(_loc3_)
            {
               _loc1_.inlayInfoAry.push(_loc3_.clone());
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
