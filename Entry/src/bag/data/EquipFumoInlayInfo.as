package bag.data
{
   public class EquipFumoInlayInfo
   {
       
      public var jadeInfo:bag.data.GemItemData;
      
      public var stoneInfo:bag.data.GemItemData;
      
      public var isOpen:Boolean;
      
      public function EquipFumoInlayInfo()
      {
         super();
      }
      
      public function clone() : EquipFumoInlayInfo
      {
         var _loc1_:EquipFumoInlayInfo = new EquipFumoInlayInfo();
         _loc1_.isOpen = this.isOpen;
         _loc1_.jadeInfo = this.jadeInfo;
         _loc1_.stoneInfo = this.stoneInfo;
         return _loc1_;
      }
   }
}
