package dungeon.model
{
   import flash.events.EventDispatcher;
   import dungeon.model.data.UniversalWipeoutInfo;
   import dungeon.model.data.UniversalWipeoutIncome;
   import flash.utils.Dictionary;
   import dungeon.event.UniversalWipeoutEvent;
   import dungeon.def.UniversalWipeoutStateDef;
   
   [Event(name="wipeOutChange",type="dungeon.event.UniversalWipeoutEvent")]
   [Event(name="incomeChange",type="dungeon.event.UniversalWipeoutEvent")]
   public class UniversalWipeoutModel extends EventDispatcher
   {
       
      private var _data:UniversalWipeoutInfo;
      
      private var _incomes:Vector.<UniversalWipeoutIncome>;
      
      private var _map:Dictionary;
      
      private var _type:uint;
      
      private var _startOrder:uint;
      
      public function UniversalWipeoutModel(param1:uint)
      {
         super();
         this._type = param1;
         this._startOrder = 1;
      }
      
      public function reset() : void
      {
         this.clearIncomes();
         this._data = null;
      }
      
      public function clearIncomes() : void
      {
         this._map = new Dictionary(false);
         this._incomes = new Vector.<UniversalWipeoutIncome>();
      }
      
      public function importIncomes(param1:Vector.<UniversalWipeoutIncome>, param2:Boolean) : void
      {
         var income:UniversalWipeoutIncome = null;
         var list:Vector.<UniversalWipeoutIncome> = param1;
         var replace:Boolean = param2;
         if(replace)
         {
            this._incomes = new Vector.<UniversalWipeoutIncome>();
            this._map = new Dictionary(false);
         }
         for each(income in list)
         {
            this.safeImportIncome(income);
         }
         this.validate();
         this._incomes.sort(function(param1:UniversalWipeoutIncome, param2:UniversalWipeoutIncome):int
         {
            return param1.order > param2.order?1:-1;
         });
         dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.INCOME_CHANGE,this._incomes));
      }
      
      public function startCollectIncome() : void
      {
         this.validate();
      }
      
      public function updateIncome(param1:UniversalWipeoutIncome) : void
      {
         var income:UniversalWipeoutIncome = param1;
         if(!income.complete)
         {
            return;
         }
         this.safeImportIncome(income);
         this.validate();
         this._incomes.sort(function(param1:UniversalWipeoutIncome, param2:UniversalWipeoutIncome):int
         {
            return param1.order > param2.order?1:-1;
         });
         dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.INCOME_CHANGE,this._incomes));
      }
      
      private function safeImportIncome(param1:UniversalWipeoutIncome) : void
      {
         var _loc2_:* = 0;
         if(!this._map[param1.order])
         {
            this._incomes.push(param1);
         }
         else if(this._map[param1.order] != param1)
         {
            _loc2_ = this._incomes.indexOf(this._map[param1.order]);
            if(_loc2_ >= 0)
            {
               this._incomes.splice(_loc2_,1,param1);
            }
            else
            {
               throw new Error("扫荡奖励管理失败：" + param1.order);
            }
         }
         this._map[param1.order] = param1;
      }
      
      public function getIncome(param1:uint) : UniversalWipeoutIncome
      {
         return this._map[param1] as UniversalWipeoutIncome;
      }
      
      private function validate() : void
      {
         var _loc1_:UniversalWipeoutIncome = null;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:* = 0;
         if(this.state == UniversalWipeoutStateDef.RUNNING)
         {
            if(this._data.remainCount > 0)
            {
               if(this._data.currentCount == 0)
               {
                  _loc1_ = new UniversalWipeoutIncome(this._type);
                  _loc1_.order = this._startOrder;
               }
               else
               {
                  _loc2_ = this._data.currentCount + 1;
                  _loc1_ = this.getIncome(_loc2_) || new UniversalWipeoutIncome(this._type);
                  _loc1_.order = _loc2_;
               }
               _loc1_.complete = false;
               this.safeImportIncome(_loc1_);
            }
         }
         if(this._incomes && this._incomes.length)
         {
            _loc3_ = this._incomes[this._incomes.length - 1].complete?1:2;
            _loc4_ = 0;
            while(_loc4_ < this._incomes.length - 2)
            {
               if(this._incomes[_loc4_].animateFlag == 0)
               {
                  this._incomes[_loc4_].animateFlag = 1;
               }
               _loc4_++;
            }
         }
      }
      
      public function dispose() : void
      {
         this._map = null;
         if(this._incomes)
         {
            this._incomes.length = 0;
            this._incomes = null;
         }
         this._data = null;
      }
      
      public function get data() : UniversalWipeoutInfo
      {
         return this._data;
      }
      
      public function set data(param1:UniversalWipeoutInfo) : void
      {
         this._data = param1;
         dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.WIPE_OUT_CHANGE,this._data));
      }
      
      public function get state() : uint
      {
         return this._data?this._data.state:UniversalWipeoutStateDef.WAIT;
      }
      
      public function get incomes() : Vector.<UniversalWipeoutIncome>
      {
         return this._incomes;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get startOrder() : uint
      {
         return this._startOrder;
      }
      
      public function set startOrder(param1:uint) : void
      {
         this._startOrder = param1;
      }
   }
}
