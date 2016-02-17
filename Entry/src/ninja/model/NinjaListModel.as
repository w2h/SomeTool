package ninja.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import ninja.model.data.NinjaInfo;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import def.ModelDef;
   
   [Event(name="change",type="flash.events.Event")]
   public class NinjaListModel extends BaseModel
   {
       
      private var _type:uint;
      
      private var _uin:String;
      
      private var _list:Vector.<NinjaInfo>;
      
      private var _map:Dictionary;
      
      private var _sequenceMap:Dictionary;
      
      private var _available:Boolean;
      
      public function NinjaListModel(param1:uint, param2:String = null)
      {
         super(ModelDef.NINJA + "#NinjaList#" + param2);
         this._type = param1;
         this._uin = param2;
         this._list = new Vector.<NinjaInfo>();
         this._sequenceMap = new Dictionary(false);
         this._map = new Dictionary(false);
      }
      
      public function importNinjas(param1:Vector.<NinjaInfo>, param2:Boolean) : void
      {
         var _loc3_:NinjaInfo = null;
         if(param2)
         {
            while(this._list.length)
            {
               _loc3_ = this._list.shift();
               delete this._map[_loc3_.id];
               delete this._sequenceMap[_loc3_.id];
            }
         }
         var _loc4_:Boolean = false;
         for each(_loc3_ in param1)
         {
            _loc4_ = true;
            this.updateNinja(_loc3_,false);
         }
         if(param2 || _loc4_)
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         this._available = true;
      }
      
      public function updateNinja(param1:NinjaInfo, param2:Boolean = true) : void
      {
         var _loc4_:* = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:NinjaInfo = this._map[param1.id];
         this._sequenceMap[param1.sequence] = param1;
         this._map[param1.id] = param1;
         if(!_loc3_)
         {
            this._list.push(param1);
         }
         else
         {
            _loc4_ = this._list.indexOf(_loc3_);
            if(_loc4_ >= 0)
            {
               this._list.splice(_loc4_,1);
               this._list.push(param1);
            }
            else
            {
               throw new Error(this + "忍者管理出错!");
            }
         }
         param2 && dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function filterNinjaWith(param1:Vector.<uint>) : Vector.<NinjaInfo>
      {
         var _loc3_:uint = 0;
         var _loc4_:Vector.<NinjaInfo> = null;
         var _loc5_:NinjaInfo = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ = _loc2_ | 1 << _loc3_;
         }
         _loc4_ = new Vector.<NinjaInfo>();
         for each(_loc5_ in this._list)
         {
            if((_loc5_.status & _loc2_) == _loc2_)
            {
               _loc4_.push(_loc5_);
            }
         }
         return _loc4_;
      }
      
      public function getNinja(param1:uint) : NinjaInfo
      {
         return this._sequenceMap[param1] as NinjaInfo;
      }
      
      function getNinja(param1:uint) : NinjaInfo
      {
         return this._map[param1] as NinjaInfo;
      }
      
      public function removeNinja(param1:uint) : NinjaInfo
      {
         var _loc3_:* = 0;
         var _loc2_:NinjaInfo = this.getNinja(param1);
         if(_loc2_)
         {
            _loc3_ = this._list.indexOf(_loc2_);
            if(_loc3_ >= 0)
            {
               this._list.splice(_loc3_,1);
               delete this._sequenceMap[_loc2_.sequence];
               delete this._map[_loc2_.id];
            }
            else
            {
               throw new Error(this + "移除忍者出错!");
            }
         }
         dispatchEvent(new Event(Event.CHANGE));
         return _loc2_;
      }
      
      function removeNinja(param1:uint) : NinjaInfo
      {
         var _loc2_:NinjaInfo = this.getNinja(param1);
         return _loc2_?this.removeNinja(_loc2_.sequence):null;
      }
      
      public function sort(param1:Function) : void
      {
         param1 && this._list.sort(param1);
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get list() : Vector.<NinjaInfo>
      {
         return this._list.concat();
      }
      
      public function get length() : uint
      {
         return this._list.length;
      }
      
      public function get uin() : String
      {
         return this._uin;
      }
      
      public function get available() : Boolean
      {
         return this._available;
      }
   }
}
