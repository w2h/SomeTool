package ninja.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import serverProto.inc.NinjaSourceType;
   import flash.events.Event;
   import ninja.model.data.NinjaInfo;
   import RSModel.event.RSModelEvent;
   import ninja.utils.NinjaUtils;
   import RSModel.RSModelNotifier;
   import ninja.event.NinjaModelEvent;
   import serverProto.formation.FormationType;
   import com.tencent.morefun.framework.net.pub;
   import ninja.model.data.FormationInfo;
   import ninja.model.data.NinjaArrangeInfo;
   import def.ModelDef;
   
   [Event(name="formationChange",type="ninja.event.NinjaModelEvent")]
   [Event(name="storageChange",type="ninja.event.NinjaModelEvent")]
   [Event(name="packageChange",type="ninja.event.NinjaModelEvent")]
   public class UserNinjaModel extends BaseModel
   {
       
      private var _stgMap:Dictionary;
      
      private var _pkgMap:Dictionary;
      
      private var _bag:ninja.model.NinjaListModel;
      
      private var _storage:ninja.model.NinjaListModel;
      
      private var _formations:Dictionary;
      
      private var _uin:String;
      
      private var sortFormation:int = 0;
      
      public function UserNinjaModel(param1:String = null)
      {
         var param1:String = param1 || Math.random().toFixed(8).substr(2);
         super(ModelDef.NINJA + "#" + param1);
         this._uin = param1;
         this._formations = new Dictionary(false);
         this.initNinjaModel();
      }
      
      private function initNinjaModel() : void
      {
         var _loc2_:String = null;
         var _loc4_:XML = null;
         var _loc5_:ninja.model.NinjaListModel = null;
         var _loc6_:uint = 0;
         var _loc1_:Vector.<uint> = new Vector.<uint>();
         var _loc3_:XMLList = describeType(NinjaSourceType).constant;
         for each(_loc4_ in _loc3_)
         {
            _loc2_ = String(_loc4_.@name);
            _loc1_.push(NinjaSourceType[_loc2_]);
         }
         this._stgMap = new Dictionary(false);
         this._pkgMap = new Dictionary(false);
         while(_loc1_.length)
         {
            _loc6_ = _loc1_.shift();
            _loc5_ = this._stgMap[_loc6_] = new ninja.model.NinjaListModel(_loc6_,this.uin);
            _loc5_.addEventListener(Event.CHANGE,this.storageChangeHandler);
            _loc5_ = this._pkgMap[_loc6_] = new ninja.model.NinjaListModel(_loc6_,this.uin);
            _loc5_.addEventListener(Event.CHANGE,this.packageChangeHandler);
         }
         this._storage = this.getNinjaStorage(NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT);
         this._bag = this.getNinjaPackage(NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT);
      }
      
      private function sortRule(param1:NinjaInfo, param2:NinjaInfo) : int
      {
         var _loc3_:uint = 1 << this.sortFormation;
         if((param1.status & _loc3_) != (param2.status & _loc3_))
         {
            return (param1.status & _loc3_) > (param2.status & _loc3_)?-1:1;
         }
         if(param1.sequence == 0 || param2.sequence == 0)
         {
            return param1.sequence == 0?-1:1;
         }
         if(param1.level != param2.level)
         {
            return param1.level > param2.level?-1:1;
         }
         if(param1.combat != param2.combat)
         {
            return param1.combat > param2.combat?-1:1;
         }
         if(param1.id != param2.id)
         {
            return param1.id > param2.id?1:-1;
         }
         return param1.sequence > param2.sequence?1:-1;
      }
      
      private function packageChangeHandler(param1:Event) : void
      {
         var _loc3_:RSModelEvent = null;
         var _loc2_:ninja.model.NinjaListModel = param1.currentTarget as NinjaListModel;
         this.sortFormation = NinjaUtils.getFormationType(_loc2_.type);
         _loc2_.sort(this.sortRule);
         this.updateFormationFlag(this.getFormation(NinjaUtils.getFormationType(_loc2_.type)),_loc2_);
         if(_loc2_.type == NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT)
         {
            _loc3_ = new RSModelEvent(RSModelEvent.DEFAULT_NINJA_PACKAGE_CHANGE,_loc2_.list);
            RSModelNotifier.dispatchEvent(_loc3_);
         }
         var _loc4_:NinjaModelEvent = new NinjaModelEvent(NinjaModelEvent.PACKAGE_CHANGE);
         _loc4_.ninjas = _loc2_.list;
         _loc4_.id = _loc2_.type;
         dispatchEvent(_loc4_);
         _loc3_ = new RSModelEvent(RSModelEvent.NINJA_PACKAGE_CHANGE,_loc2_.list);
         _loc3_.id = _loc2_.type;
         RSModelNotifier.dispatchEvent(_loc3_);
         this.sortFormation = FormationType.DEFAULT_FORMATION;
      }
      
      private function storageChangeHandler(param1:Event) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function getNinjaStorage(param1:uint) : ninja.model.NinjaListModel
      {
         return this._stgMap[param1] as NinjaListModel;
      }
      
      public function getNinjaPackage(param1:uint) : ninja.model.NinjaListModel
      {
         return this._pkgMap[param1] as NinjaListModel;
      }
      
      public function getNinja(param1:uint) : NinjaInfo
      {
         var _loc2_:NinjaInfo = this._bag.getNinja(param1);
         if(!_loc2_)
         {
            _loc2_ = this._storage.getNinja(param1);
         }
         return _loc2_;
      }
      
      function getNinja(param1:uint) : NinjaInfo
      {
         var _loc2_:NinjaInfo = this._bag.pub::getNinja(param1);
         if(!_loc2_)
         {
            _loc2_ = this._storage.pub::getNinja(param1);
         }
         return _loc2_;
      }
      
      public function updateFormation(param1:FormationInfo) : void
      {
         var _loc2_:RSModelEvent = null;
         var _loc3_:Vector.<NinjaInfo> = null;
         if(!param1)
         {
            return;
         }
         if(this._formations[param1.id])
         {
            param1.formationName = this._formations[param1.id].formationName;
            param1.formationIndex = this._formations[param1.id].formationIndex;
         }
         this._formations[param1.id] = param1;
         if(param1.id == FormationType.DEFAULT_FORMATION)
         {
            _loc3_ = this.updateFormationFlag(param1,this._bag);
            _loc2_ = new RSModelEvent(RSModelEvent.DEFAULT_FORMATION_CHANGE,param1);
            RSModelNotifier.dispatchEvent(_loc2_);
         }
         else
         {
            this.updateFormationFlag(param1,this.getNinjaStorage(NinjaUtils.getNinjaSourceType(param1.id)));
            this.updateFormationFlag(param1,this.getNinjaPackage(NinjaUtils.getNinjaSourceType(param1.id)));
         }
         var _loc4_:NinjaModelEvent = new NinjaModelEvent(NinjaModelEvent.FORMATION_CHANGE);
         _loc4_.id = param1.id;
         _loc4_.formation = param1;
         _loc4_.ninjas = _loc3_;
         dispatchEvent(_loc4_);
         _loc2_ = new RSModelEvent(RSModelEvent.FORMATION_CHANGE,param1);
         _loc2_.id = param1.id;
         RSModelNotifier.dispatchEvent(_loc2_);
      }
      
      private function updateFormationFlag(param1:FormationInfo, param2:ninja.model.NinjaListModel) : Vector.<NinjaInfo>
      {
         var _loc3_:NinjaInfo = null;
         var _loc6_:NinjaArrangeInfo = null;
         if(!param1 || !param2)
         {
            return null;
         }
         var _loc4_:uint = 1 << param1.id;
         var _loc5_:Dictionary = new Dictionary(false);
         for each(_loc6_ in param1.arranges)
         {
            _loc5_[_loc6_.sequence] = true;
         }
         for each(_loc3_ in param2.list)
         {
            if(_loc5_[_loc3_.sequence])
            {
               _loc3_.status = _loc3_.status | _loc4_;
            }
            else
            {
               _loc3_.status = _loc3_.status & ~_loc4_;
            }
         }
         this.sortFormation = param1.id;
         param2.sort(this.sortRule);
         this.sortFormation = FormationType.DEFAULT_FORMATION;
         return param2.list;
      }
      
      public function getFormation(param1:uint) : FormationInfo
      {
         return this._formations[param1] as FormationInfo;
      }
      
      public function get uin() : String
      {
         return this._uin;
      }
      
      public function get bag() : ninja.model.NinjaListModel
      {
         return this._bag;
      }
      
      public function get storage() : ninja.model.NinjaListModel
      {
         return this._storage;
      }
      
      public function get list() : Vector.<NinjaInfo>
      {
         return this._bag.list.concat(this._storage.list);
      }
   }
}
