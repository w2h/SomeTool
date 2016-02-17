package equipment.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import equipment.data.EquipmentRowData;
   import bag.data.EquipmentItemData;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import equipment.def.EquipmentModelKeys;
   import def.ModelDef;
   
   public class EquipmentModel extends BaseModel
   {
       
      private var _equipmentList:Vector.<EquipmentRowData>;
      
      private var _autoEquipBest:Boolean;
      
      private var _viewId:int;
      
      private var _selectedEquipment:EquipmentItemData;
      
      private var _fumoBagType:int = 0;
      
      private var _equipmentIndex:int;
      
      private var _inlayIndexArr:Array;
      
      private var _myNarutoStoneLog:Array;
      
      private var _svrNarutoStoneLog:Array;
      
      public function EquipmentModel()
      {
         this._myNarutoStoneLog = [];
         this._svrNarutoStoneLog = [];
         super(ModelDef.EQUIPMENT);
         this._inlayIndexArr = [];
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            this._inlayIndexArr[_loc1_] = -1;
            _loc1_++;
         }
      }
      
      public function get inlayIndexArr() : Array
      {
         return this._inlayIndexArr;
      }
      
      public function set inlayIndexArr(param1:Array) : void
      {
         this._inlayIndexArr = param1;
      }
      
      public function get equipmentIndex() : int
      {
         return this._equipmentIndex;
      }
      
      public function set equipmentIndex(param1:int) : void
      {
         this._equipmentIndex = param1;
      }
      
      public function get curSelInlayIndex() : int
      {
         return this._inlayIndexArr[this._equipmentIndex];
      }
      
      public function destroy() : void
      {
      }
      
      public function get equipmentList() : Vector.<EquipmentRowData>
      {
         return this._equipmentList;
      }
      
      public function set equipmentList(param1:Vector.<EquipmentRowData>) : void
      {
         this._equipmentList = param1;
         this.dispModelEvent(ModelEvent.UPDATE,EquipmentModelKeys.EQUIPMENT_LIST_UPDATE,null,this._equipmentList);
      }
      
      public function get autoEquipBest() : Boolean
      {
         return this._autoEquipBest;
      }
      
      public function set autoEquipBest(param1:Boolean) : void
      {
         if(this._autoEquipBest == param1)
         {
            return;
         }
         var _loc2_:Boolean = this._autoEquipBest;
         this._autoEquipBest = param1;
         this.dispModelEvent(ModelEvent.UPDATE,EquipmentModelKeys.AUTO_EQUIP_BEST_CHANGE,_loc2_,param1);
      }
      
      public function updateEquipment(param1:EquipmentItemData) : void
      {
         var _loc4_:Vector.<EquipmentRowData> = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Vector.<EquipmentItemData> = null;
         var _loc8_:* = 0;
         var _loc9_:EquipmentItemData = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:EquipmentItemData = null;
         var _loc3_:EquipmentItemData = param1;
         if(this.equipmentList != null)
         {
            _loc4_ = this.equipmentList;
            _loc5_ = _loc4_.length;
            _loc6_ = 0;
            _loc10_ = 0;
            while(_loc10_ < _loc5_)
            {
               if(_loc4_[_loc10_].equipmentItems != null)
               {
                  _loc7_ = _loc4_[_loc10_].equipmentItems;
                  _loc8_ = _loc7_.length;
                  _loc11_ = 0;
                  while(_loc11_ < _loc8_)
                  {
                     _loc9_ = _loc7_[_loc11_] as EquipmentItemData;
                     if(_loc9_ != null && _loc9_.sequenceId == param1.sequenceId)
                     {
                        _loc2_ = _loc7_[_loc11_];
                        _loc7_[_loc11_] = param1;
                        break;
                     }
                     _loc11_++;
                  }
                  if(_loc3_ != null)
                  {
                     break;
                  }
               }
               _loc10_++;
            }
         }
         this.dispModelEvent(ModelEvent.UPDATE,EquipmentModelKeys.UPDATE_EQUIPMENT,_loc2_,_loc3_);
      }
      
      public function get viewId() : int
      {
         return this._viewId;
      }
      
      public function set viewId(param1:int) : void
      {
         this._viewId = param1;
      }
      
      public function get fumoBagType() : int
      {
         return this._fumoBagType;
      }
      
      public function set fumoBagType(param1:int) : void
      {
         this._fumoBagType = param1;
      }
      
      public function get selectedEquipment() : EquipmentItemData
      {
         return this._selectedEquipment;
      }
      
      public function set selectedEquipment(param1:EquipmentItemData) : void
      {
         this._selectedEquipment = param1;
      }
      
      public function updateMyNarutoStoneLog(param1:String) : void
      {
         this._myNarutoStoneLog.push(param1);
         if(this._myNarutoStoneLog.length > 30)
         {
            this._myNarutoStoneLog.shift();
         }
         this.dispModelEvent(ModelEvent.UPDATE,EquipmentModelKeys.MY_NARUTO_STONE_LOG_UPDATE,null,param1);
      }
      
      public function updateSvrNarutoStoneLog(param1:String) : void
      {
         this._svrNarutoStoneLog.push(param1);
         if(this._svrNarutoStoneLog.length > 30)
         {
            this._svrNarutoStoneLog.shift();
         }
         this.dispModelEvent(ModelEvent.UPDATE,EquipmentModelKeys.SVR_NARUTO_STONE_LOG_UPDATE,null,param1);
      }
      
      public function clearSvrNarutoStoneLog() : void
      {
         this._svrNarutoStoneLog.splice(0,this._svrNarutoStoneLog.length);
      }
      
      public function get myNarutoStoneLog() : Array
      {
         return this._myNarutoStoneLog;
      }
      
      public function get svrNarutoStoneLog() : Array
      {
         return this._svrNarutoStoneLog;
      }
   }
}
