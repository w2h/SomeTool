package tactic.model
{
   import flash.events.EventDispatcher;
   import tactic.model.data.TacticInfo;
   import flash.events.Event;
   
   [Event(name="change",type="flash.events.Event")]
   public class TacticUniqueModel extends EventDispatcher
   {
       
      private var _type:uint;
      
      private var _list:Vector.<TacticInfo>;
      
      public function TacticUniqueModel(param1:uint)
      {
         super();
         this._type = param1;
      }
      
      public function replaceTactics(param1:Vector.<TacticInfo>) : void
      {
         this._list = param1;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function getTacticInfo(param1:uint) : TacticInfo
      {
         return param1 < this._list.length?this._list[param1]:null;
      }
      
      public function updateTacticInfo(param1:TacticInfo) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._list.length)
         {
            if(this._list[_loc2_].index == param1.index)
            {
               param1.selected = this._list[_loc2_].selected;
               param1.using = this._list[_loc2_].using;
               this._list.splice(_loc2_,1,param1);
               dispatchEvent(new Event(Event.CHANGE));
               break;
            }
            _loc2_++;
         }
      }
      
      public function getCurrentTactic() : TacticInfo
      {
         var _loc1_:TacticInfo = null;
         for each(_loc1_ in this._list)
         {
            if(_loc1_.using)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get list() : Vector.<TacticInfo>
      {
         return this._list;
      }
   }
}
