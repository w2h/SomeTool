package hud.utils
{
   import bag.def.ItemTabs;
   import serverProto.bag.ProtoGetBagListType;
   import bag.data.ItemData;
   import bag.utils.BagUtils;
   import bag.BagConst;
   import bag.data.TaskItemData;
   import bag.data.EquipmentItemData;
   import bag.data.CardItemData;
   import bag.data.BeastFragmentData;
   import bag.data.BeastRuneData;
   import bag.data.TreasureMapItemData;
   
   public class ItemFilter
   {
       
      public function ItemFilter()
      {
         super();
         throw new Error(ItemFilter + " can not be instantiated.");
      }
      
      public static function filterByTab(param1:int) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function calcServerItemTabs(param1:int) : Array
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function calcClientItemTab(param1:int) : int
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function filterAllItems() : Vector.<ItemData>
      {
         if(BagUtils.model.items == null)
         {
            return null;
         }
         var _loc1_:int = BagUtils.model.items.length;
         var _loc2_:int = _loc1_ < BagConst.ITEM_CELL_MAX_NUM?BagConst.ITEM_CELL_MAX_NUM - _loc1_:0;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_.push(new ItemData());
            _loc4_++;
         }
         var _loc5_:Vector.<ItemData> = BagUtils.model.items.concat(Vector.<ItemData>(_loc3_));
         return _loc5_;
      }
      
      public static function filterTaskItems() : Vector.<TaskItemData>
      {
         return BagUtils.model.taskItems;
      }
      
      public static function filterEquipmentItems() : Vector.<EquipmentItemData>
      {
         return BagUtils.model.equipmentItems;
      }
      
      public static function filterCardItems() : Vector.<CardItemData>
      {
         return BagUtils.model.cardItems;
      }
      
      public static function filterCommonItems(param1:int) : Vector.<ItemData>
      {
         if(BagUtils.model.items == null)
         {
            return null;
         }
         var _loc2_:Vector.<ItemData> = BagUtils.model.items;
         var _loc3_:int = _loc2_.length;
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            if(_loc2_[_loc5_].tab == param1)
            {
               _loc4_.push(_loc2_[_loc5_]);
            }
            _loc5_++;
         }
         return Vector.<ItemData>(_loc4_);
      }
      
      public static function filterEquipmentAndAllItemsItems() : Vector.<ItemData>
      {
         if(BagUtils.model.items == null || BagUtils.model.equipmentItems == null)
         {
            return null;
         }
         var _loc1_:Vector.<ItemData> = BagUtils.model.items.concat(BagUtils.model.equipmentItems);
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function filterBeastFragments() : Vector.<BeastFragmentData>
      {
         return BagUtils.model.beastFragments;
      }
      
      public static function filterBeastRunes() : Vector.<BeastRuneData>
      {
         return BagUtils.model.beastRunes;
      }
      
      public static function filterTreasureMaps() : Vector.<TreasureMapItemData>
      {
         return BagUtils.model.treasureMapItems;
      }
      
      public static function filterStoneItems() : Vector.<ItemData>
      {
         return BagUtils.model.stoneItems;
      }
   }
}
