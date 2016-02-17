package crew.model
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import crew.data.NinjaPropsInfo;
   import crew.event.NinjaPropsModelEvent;
   import crew.def.NinjaPropsTypeDef;
   
   [Event(name="propsChagne",type="crew.event.NinjaPropsEvent")]
   public class NinjaPropsInnerModel extends EventDispatcher
   {
       
      private var _map:Dictionary;
      
      private var _props:Vector.<NinjaPropsInfo>;
      
      private var _type:uint;
      
      public function NinjaPropsInnerModel(param1:uint)
      {
         super();
         this._type = param1;
         this._props = new Vector.<NinjaPropsInfo>();
         this._map = new Dictionary(false);
      }
      
      public function importNinjaPropsInfos(param1:Vector.<NinjaPropsInfo>, param2:Boolean) : void
      {
         var _loc3_:NinjaPropsInfo = null;
         if(param2)
         {
            this._map = new Dictionary(false);
            this._props = new Vector.<NinjaPropsInfo>();
         }
         for each(_loc3_ in param1)
         {
            this.updateNinjaPropsInfo(_loc3_,false);
         }
         this._props.sort(this.sort);
         if(param1)
         {
            param1.sort(this.sort);
         }
         var _loc4_:NinjaPropsModelEvent = new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE,this._props);
         _loc4_.changes = param1?param1.concat():null;
         dispatchEvent(_loc4_);
      }
      
      public function updateNinjaPropsInfo(param1:NinjaPropsInfo, param2:Boolean = true) : void
      {
         var _loc3_:* = 0;
         var _loc4_:NinjaPropsModelEvent = null;
         if(!param1)
         {
            return;
         }
         if(!param1.cfg)
         {
            throw new Error("忍具[" + param1.id + "]缺少配置信息！");
         }
         if(!this._map[param1.index])
         {
            this._props.push(param1);
         }
         else if(this._map[param1.index] != param1)
         {
            _loc3_ = this._props.indexOf(this._map[param1.index]);
            if(_loc3_ >= 0)
            {
               this._props.splice(_loc3_,1,param1);
            }
            else
            {
               throw new Error("忍具[" + param1.id + "/" + param1.cfg.name + "]管理失败！");
            }
         }
         this._map[param1.index] = param1;
         this._props.sort(this.sort);
         if(param2)
         {
            _loc4_ = new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE,this._props);
            _loc4_.changes = Vector.<NinjaPropsInfo>([param1]);
            dispatchEvent(_loc4_);
         }
      }
      
      public function removeNinjaPropsInfo(param1:uint) : NinjaPropsInfo
      {
         var _loc3_:* = 0;
         var _loc2_:NinjaPropsInfo = this._map[param1] as NinjaPropsInfo;
         if(_loc2_)
         {
            _loc3_ = this._props.indexOf(_loc2_);
            if(_loc3_ >= 0)
            {
               this._props.splice(_loc3_,1);
            }
            else
            {
               throw new Error("忍具[" + _loc2_.id + "/" + _loc2_.cfg.name + "]管理失败！");
            }
         }
         delete this._map[param1];
         _loc2_ && dispatchEvent(new NinjaPropsModelEvent(NinjaPropsModelEvent.PROPS_CHANGE,this._props));
         return _loc2_;
      }
      
      public function sortEquipBag(param1:NinjaPropsInfo, param2:NinjaPropsInfo) : int
      {
         if(param1.id && param2.id)
         {
            if(NinjaPropsTypeDef.EXP_PROPS.indexOf(param1.cfg.type) > -1 && NinjaPropsTypeDef.EXP_PROPS.indexOf(param2.cfg.type) < 0)
            {
               return 1;
            }
            if(NinjaPropsTypeDef.EXP_PROPS.indexOf(param1.cfg.type) < 0 && NinjaPropsTypeDef.EXP_PROPS.indexOf(param2.cfg.type) > -1)
            {
               return -1;
            }
            return this.sort(param1,param2);
         }
         if(!param1.id && !param2.id)
         {
            return 1;
         }
         return param1.id > param2.id?-1:1;
      }
      
      public function sortUpgradeBag(param1:NinjaPropsInfo, param2:NinjaPropsInfo) : int
      {
         if(param1.id && param2.id)
         {
            if(NinjaPropsTypeDef.EXP_PROPS.indexOf(param1.cfg.type) > -1 && NinjaPropsTypeDef.EXP_PROPS.indexOf(param2.cfg.type) < 0)
            {
               return -1;
            }
            if(NinjaPropsTypeDef.EXP_PROPS.indexOf(param1.cfg.type) < 0 && NinjaPropsTypeDef.EXP_PROPS.indexOf(param2.cfg.type) > -1)
            {
               return 1;
            }
            return this.sort(param1,param2);
         }
         if(!param1.id && !param2.id)
         {
            return 1;
         }
         return param1.id > param2.id?-1:1;
      }
      
      private function sort(param1:NinjaPropsInfo, param2:NinjaPropsInfo) : int
      {
         if(param1.using != param2.using)
         {
            return int(param1.using) > int(param2.using)?-1:1;
         }
         if(param1.cfg.quality != param2.cfg.quality)
         {
            return param1.cfg.quality > param2.cfg.quality?-1:1;
         }
         if(param1.index != param2.index)
         {
            return param1.index > param2.index?1:-1;
         }
         if(param1.level != param2.level)
         {
            return param1.level > param2.level?-1:1;
         }
         return param1.id > param2.id?1:-1;
      }
      
      public function getNinjaPropsInfoByIndex(param1:uint) : NinjaPropsInfo
      {
         return this._map[param1] as NinjaPropsInfo;
      }
      
      public function getNinjaPropsInfo(param1:uint) : Vector.<NinjaPropsInfo>
      {
         var _loc2_:Vector.<NinjaPropsInfo> = new Vector.<NinjaPropsInfo>();
         var _loc3_:int = 0;
         while(_loc3_ < this._props.length)
         {
            if(this._props[_loc3_].id == param1)
            {
               _loc2_.push(this._props[_loc3_]);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get props() : Vector.<NinjaPropsInfo>
      {
         return this._props;
      }
   }
}
