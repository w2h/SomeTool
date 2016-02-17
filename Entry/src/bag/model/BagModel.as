package bag.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import bag.data.ItemData;
   import bag.data.TaskItemData;
   import bag.data.EquipmentItemData;
   import bag.data.CardItemData;
   import bag.data.BeastFragmentData;
   import bag.data.BeastRuneData;
   import bag.data.TreasureMapItemData;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import bag.def.BagModelKeys;
   import bag.utils.BagUtils;
   import bag.command.GetBagDataCommand;
   import def.ModelDef;
   
   public class BagModel extends BaseModel
   {
       
      private var _cellNum:int;
      
      private var _items:Vector.<ItemData>;
      
      private var _stoneItems:Vector.<ItemData>;
      
      private var _taskItems:Vector.<TaskItemData>;
      
      private var _equipmentItems:Vector.<EquipmentItemData>;
      
      private var _cardItems:Vector.<CardItemData>;
      
      private var _beastFragments:Vector.<BeastFragmentData>;
      
      private var _beastRunes:Vector.<BeastRuneData>;
      
      private var _treasureMapItems:Vector.<TreasureMapItemData>;
      
      public function BagModel()
      {
         super(ModelDef.BAG);
      }
      
      public function finalize() : void
      {
      }
      
      public function get cellNum() : int
      {
         if(this._cellNum == 0)
         {
            this.fetchBagData();
         }
         return this._cellNum;
      }
      
      public function set cellNum(param1:int) : void
      {
         if(param1 == 0)
         {
            return;
         }
         this._cellNum = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.CELL_NUM_UPDATE,null,this._cellNum);
      }
      
      public function get items() : Vector.<ItemData>
      {
         if(this._items == null)
         {
            this.fetchBagData();
         }
         return this._items;
      }
      
      public function set items(param1:Vector.<ItemData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._items = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.ITEMS_UPDATE,null,this._items);
      }
      
      public function get stoneItems() : Vector.<ItemData>
      {
         if(this._stoneItems == null)
         {
            this.fetchBagData();
         }
         return this._stoneItems;
      }
      
      public function set stoneItems(param1:Vector.<ItemData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._stoneItems = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.STONE_UPDATE,null,this._stoneItems);
      }
      
      public function get taskItems() : Vector.<TaskItemData>
      {
         if(this._taskItems == null)
         {
            this.fetchBagData();
         }
         return this._taskItems;
      }
      
      public function set taskItems(param1:Vector.<TaskItemData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._taskItems = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.TASK_ITEMS_UPDATE,null,this._taskItems);
      }
      
      public function get equipmentItems() : Vector.<EquipmentItemData>
      {
         if(this._equipmentItems == null)
         {
            this.fetchBagData();
         }
         return this._equipmentItems;
      }
      
      public function set equipmentItems(param1:Vector.<EquipmentItemData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._equipmentItems = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.EQUIPMENT_ITEMS_UPDATE,null,this._equipmentItems);
      }
      
      public function get cardItems() : Vector.<CardItemData>
      {
         if(this._cardItems == null)
         {
            this.fetchBagData();
         }
         return this._cardItems;
      }
      
      public function set cardItems(param1:Vector.<CardItemData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._cardItems = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.CARD_ITEMS_UPDATE,null,this._cardItems);
      }
      
      public function get beastFragments() : Vector.<BeastFragmentData>
      {
         if(this._beastFragments == null)
         {
            this.fetchBagData();
         }
         return this._beastFragments;
      }
      
      public function set beastFragments(param1:Vector.<BeastFragmentData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._beastFragments = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.BEAST_FRAGMENTS_UPDATE,null,this._beastFragments);
      }
      
      public function get beastRunes() : Vector.<BeastRuneData>
      {
         if(this._beastRunes == null)
         {
            this.fetchBagData();
         }
         return this._beastRunes;
      }
      
      public function set beastRunes(param1:Vector.<BeastRuneData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._beastRunes = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.BEAST_RUNES_UPDATE,null,this._beastRunes);
      }
      
      public function get treasureMapItems() : Vector.<TreasureMapItemData>
      {
         if(this._treasureMapItems == null)
         {
            this.fetchBagData();
         }
         return this._treasureMapItems;
      }
      
      public function set treasureMapItems(param1:Vector.<TreasureMapItemData>) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._treasureMapItems = param1;
         this.dispModelEvent(ModelEvent.UPDATE,BagModelKeys.TREASURE_MAP_ITEMS_UPDATE,null,this._treasureMapItems);
      }
      
      public function getItemInfoByID(param1:int) : ItemData
      {
         var _loc2_:ItemData = null;
         for each(_loc2_ in this.items)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getTotalItemNumById(param1:uint) : int
      {
         var _loc2_:Object = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(BagUtils.isTaskItem(param1))
         {
            _loc2_ = this.taskItems;
         }
         else if(BagUtils.isEquipmentItem(param1))
         {
            _loc2_ = this.equipmentItems;
         }
         else if(BagUtils.isCardItem(param1))
         {
            _loc2_ = this.cardItems;
         }
         else if(BagUtils.isBeastFragment(param1))
         {
            _loc2_ = this.beastFragments;
         }
         else if(BagUtils.isBeastRune(param1))
         {
            _loc2_ = this.beastRunes;
         }
         else if(BagUtils.isTreasureMapItem(param1))
         {
            _loc2_ = this.treasureMapItems;
         }
         else if(BagUtils.isNarutoStone(param1))
         {
            _loc2_ = this.stoneItems;
         }
         else
         {
            _loc2_ = this.items;
         }
         var _loc3_:int = 0;
         if(_loc2_ != null)
         {
            _loc4_ = _loc2_.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               if(_loc2_[_loc5_].id == param1)
               {
                  _loc3_ = _loc3_ + _loc2_[_loc5_].num;
               }
               _loc5_++;
            }
         }
         return _loc3_;
      }
      
      private function fetchBagData() : void
      {
         var _loc1_:GetBagDataCommand = new GetBagDataCommand();
         _loc1_.call();
      }
   }
}
