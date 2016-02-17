package vip.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import vip.IVIPPrivilege;
   import flash.utils.Dictionary;
   import vip.model.data.VIPPrivilegeInfo;
   import flash.events.Event;
   import def.ModelDef;
   
   [Event(name="change",type="flash.events.Event")]
   public class VIPModel extends BaseModel implements IVIPPrivilege
   {
       
      private var _map:Dictionary;
      
      private var _current:VIPPrivilegeInfo;
      
      private var _list:Vector.<VIPPrivilegeInfo>;
      
      public function VIPModel()
      {
         super(ModelDef.VIP);
         this._map = new Dictionary(false);
         this._list = new Vector.<VIPPrivilegeInfo>();
      }
      
      public function updateVIPPrivilege(param1:VIPPrivilegeInfo, param2:uint) : void
      {
         var index:int = 0;
         var info:VIPPrivilegeInfo = param1;
         var level:uint = param2;
         if(this._map[level])
         {
            index = this._list.indexOf(this._map[level] as VIPPrivilegeInfo);
            if(index >= 0)
            {
               this._list.splice(index,1);
            }
         }
         this._map[level] = info;
         if(info)
         {
            this._list.push(info);
            this._list.sort(function(param1:VIPPrivilegeInfo, param2:VIPPrivilegeInfo):int
            {
               return param1.level > param2.level?1:-1;
            });
         }
      }
      
      public function setCurrentVIP(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:VIPPrivilegeInfo = this.getVIPPrivilege(param1);
         if(_loc4_)
         {
            _loc4_.expireTime = param2;
            _loc4_.remainTime = param3;
         }
         this.current = _loc4_;
      }
      
      public function getVIPPrivilege(param1:uint) : VIPPrivilegeInfo
      {
         return this._map[param1] as VIPPrivilegeInfo;
      }
      
      public function get current() : VIPPrivilegeInfo
      {
         return this._current;
      }
      
      public function set current(param1:VIPPrivilegeInfo) : void
      {
         this._current = param1;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get list() : Vector.<VIPPrivilegeInfo>
      {
         return this._list.concat();
      }
   }
}
