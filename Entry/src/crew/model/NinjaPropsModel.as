package crew.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.Dictionary;
   import crew.data.NinjaPropsPositionInfo;
   import crew.event.NinjaPropsModelEvent;
   import crew.def.NinjaPropsListTypeDef;
   import crew.data.NinjaPropsCfgInfo;
   import bag.utils.BagUtils;
   import crew.data.NinjaPropsExpInfo;
   import crew.data.NinjaPropsInfo;
   import def.ModelDef;
   
   [Event(name="usingPropsChange",type="crew.event.NinjaPropsModelEvent")]
   [Event(name="bagPropsChange",type="crew.event.NinjaPropsModelEvent")]
   [Event(name="propsChagne",type="crew.event.NinjaPropsModelEvent")]
   public class NinjaPropsModel extends BaseModel
   {
       
      private var _expConfigMap:Dictionary;
      
      private var _configMap:Dictionary;
      
      private var _usingProps:crew.model.NinjaPropsInnerModel;
      
      private var _bagProps:crew.model.NinjaPropsInnerModel;
      
      private var _positions:Vector.<NinjaPropsPositionInfo>;
      
      private var _positionMap:Dictionary;
      
      public function NinjaPropsModel()
      {
         super(ModelDef.NINJA_PROPS);
         this._usingProps = new crew.model.NinjaPropsInnerModel(NinjaPropsListTypeDef.USING);
         this._usingProps.addEventListener(NinjaPropsModelEvent.PROPS_CHANGE,this.propsChangeHandler);
         this._bagProps = new crew.model.NinjaPropsInnerModel(NinjaPropsListTypeDef.BAG);
         this._bagProps.addEventListener(NinjaPropsModelEvent.PROPS_CHANGE,this.propsChangeHandler);
         this._positions = new Vector.<NinjaPropsPositionInfo>();
         this._positionMap = new Dictionary(false);
      }
      
      private function propsChangeHandler(param1:NinjaPropsModelEvent) : void
      {
         var _loc2_:NinjaPropsModelEvent = null;
         var _loc3_:crew.model.NinjaPropsInnerModel = param1.currentTarget as NinjaPropsInnerModel;
         if(_loc3_.type == NinjaPropsListTypeDef.USING)
         {
            _loc2_ = new NinjaPropsModelEvent(NinjaPropsModelEvent.USING_PROPS_CHANGE,param1.props);
            _loc2_.changes = param1.changes;
            dispatchEvent(_loc2_);
         }
         else if(_loc3_.type == NinjaPropsListTypeDef.BAG)
         {
            _loc2_ = new NinjaPropsModelEvent(NinjaPropsModelEvent.BAG_PROPS_CHANGE,param1.props);
            _loc2_.changes = param1.changes;
            dispatchEvent(_loc2_);
         }
         _loc2_ = new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE,this.props);
         _loc2_.changes = param1.changes;
         dispatchEvent(_loc2_);
      }
      
      public function importNinjaPropsConfig(param1:XML) : void
      {
         var _loc3_:NinjaPropsCfgInfo = null;
         var _loc4_:XML = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Dictionary = new Dictionary(false);
         for each(_loc4_ in param1.item)
         {
            _loc3_ = new NinjaPropsCfgInfo();
            _loc3_.id = parseInt(_loc4_.@id);
            _loc3_.name = _loc4_.@name;
            _loc3_.type = parseInt(_loc4_.@type) - 1;
            _loc3_.quality = parseInt(_loc4_.@quality);
            _loc3_.levelUpper = parseInt(_loc4_.@levelUpper);
            _loc3_.swallowExp = parseInt(_loc4_.@swallowExp);
            _loc3_.swallowCost = parseInt(_loc4_.@swallowCost);
            _loc3_.preloadExtraValue = _loc4_.@preloadExtraValue;
            _loc3_.color = BagUtils.QUALITY_COLORS[int(_loc4_.@color) - 1];
            _loc3_.price = parseInt(_loc4_.@price);
            _loc3_.description = _loc4_.@desc;
            _loc3_.recastBuff = _loc4_.@recastBuff;
            _loc2_[_loc3_.id] = _loc3_;
         }
         this._configMap = _loc2_;
      }
      
      public function importNinjaPropsExpConfig(param1:XML) : void
      {
         var _loc3_:NinjaPropsExpInfo = null;
         var _loc4_:uint = 0;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:XML = null;
         var _loc8_:Vector.<NinjaPropsExpInfo> = null;
         var _loc9_:String = null;
         var _loc10_:* = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:Dictionary = new Dictionary(false);
         for each(_loc7_ in param1.level)
         {
            _loc5_ = String(_loc7_.@exp).match(new RegExp("\\d+:\\d+","g"));
            _loc4_ = parseInt(_loc7_.@id);
            for each(_loc9_ in _loc5_)
            {
               _loc6_ = _loc9_.match(new RegExp("\\d+","g"));
               _loc3_ = new NinjaPropsExpInfo();
               _loc3_.quality = parseInt(_loc6_[0]);
               _loc3_.exp = parseInt(_loc6_[1]);
               _loc3_.level = _loc4_;
               if(!_loc2_[_loc3_.quality])
               {
                  _loc2_[_loc3_.quality] = new Vector.<NinjaPropsExpInfo>();
               }
               _loc2_[_loc3_.quality].push(_loc3_);
            }
         }
         for each(_loc8_ in _loc2_)
         {
            _loc8_.sort(this.sortNinjaPropsExpRule);
            if(_loc8_[0].level > 0)
            {
               _loc3_ = new NinjaPropsExpInfo();
               _loc3_.quality = _loc8_[0].quality;
               _loc3_.level = 0;
               _loc8_.unshift(_loc3_);
            }
            _loc10_ = 0;
            while(_loc10_ < _loc8_.length)
            {
               if(_loc10_ > 0)
               {
                  _loc8_[_loc10_].prev = _loc8_[_loc10_ - 1];
               }
               if(_loc10_ < _loc8_.length - 1)
               {
                  _loc8_[_loc10_].next = _loc8_[_loc10_ + 1];
               }
               _loc10_++;
            }
         }
         this._expConfigMap = _loc2_;
      }
      
      private function sortNinjaPropsExpRule(param1:NinjaPropsExpInfo, param2:NinjaPropsExpInfo) : int
      {
         if(param1.quality != param2.quality)
         {
            return param1.quality > param2.quality?1:-1;
         }
         return param1.level > param2.level?1:-1;
      }
      
      public function getNinjaPropsExpInfo(param1:uint, param2:uint) : NinjaPropsExpInfo
      {
         var _loc4_:NinjaPropsExpInfo = null;
         var _loc3_:Vector.<NinjaPropsExpInfo> = this._expConfigMap[param1] as Vector.<NinjaPropsExpInfo>;
         if(_loc3_)
         {
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.level == param2)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public function getNinjaPropsCfgInfo(param1:uint) : NinjaPropsCfgInfo
      {
         return this._configMap[param1] as NinjaPropsCfgInfo;
      }
      
      public function importNinjaPropsPositionInfos(param1:Vector.<NinjaPropsPositionInfo>, param2:Boolean) : void
      {
         var _loc3_:NinjaPropsPositionInfo = null;
         if(param2)
         {
            this._positions = new Vector.<NinjaPropsPositionInfo>();
            this._positionMap = new Dictionary(false);
         }
         for each(_loc3_ in param1)
         {
            this.updateNinjaPropsPositionInfo(_loc3_);
         }
      }
      
      public function updateNinjaPropsPositionInfo(param1:NinjaPropsPositionInfo) : void
      {
         var _loc2_:* = 0;
         if(!this._positionMap[param1.index])
         {
            this._positions.push(this._positionMap[param1.index] = param1);
         }
         else if(this._positionMap[param1.index] != param1)
         {
            _loc2_ = this._positions.indexOf(this._positionMap[param1.index]);
            if(_loc2_ >= 0)
            {
               this._positions.splice(_loc2_,1,param1);
               this._positionMap[param1.index] = param1;
            }
            else
            {
               throw new Error("忍具装备位[" + param1.index + "]管理失败！");
            }
         }
      }
      
      public function removeNinjaPropsPositionInfo(param1:uint) : NinjaPropsPositionInfo
      {
         var _loc3_:* = 0;
         var _loc2_:NinjaPropsPositionInfo = this._positionMap[param1] as NinjaPropsPositionInfo;
         if(_loc2_)
         {
            _loc3_ = this._positions.indexOf(_loc2_);
            if(_loc3_ >= 0)
            {
               this._positions.splice(_loc3_,1);
            }
         }
         return _loc2_;
      }
      
      public function getNinjaPropsPositionInfo(param1:uint) : NinjaPropsPositionInfo
      {
         return this._positionMap[param1] as NinjaPropsPositionInfo;
      }
      
      public function get props() : Vector.<NinjaPropsInfo>
      {
         return this._usingProps.props.concat(this._bagProps.props);
      }
      
      public function get usingProps() : crew.model.NinjaPropsInnerModel
      {
         return this._usingProps;
      }
      
      public function get bagProps() : crew.model.NinjaPropsInnerModel
      {
         return this._bagProps;
      }
      
      public function get positions() : Vector.<NinjaPropsPositionInfo>
      {
         return this._positions;
      }
   }
}
