package majorRole.model
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import majorRole.def.TalentSkillTypeDef;
   import flash.events.Event;
   import majorRole.commands.RequestGetTalentCommand;
   import majorRole.datas.TalentPageData;
   import majorRole.datas.TalentSkillGroupData;
   import majorRole.datas.TalentSkillData;
   
   [Event(name="CHANGE",type="flash.events.Event")]
   public class TalentSkillManager extends EventDispatcher
   {
      
      private static var _instance:majorRole.model.TalentSkillManager;
       
      private var callbackDic:Dictionary;
      
      private var dict:Dictionary;
      
      private var _currentTalentPage:int = -1;
      
      public function TalentSkillManager()
      {
         this.callbackDic = new Dictionary();
         this.dict = new Dictionary();
         super();
      }
      
      public static function get instance() : majorRole.model.TalentSkillManager
      {
         return _instance = _instance || new majorRole.model.TalentSkillManager();
      }
      
      public function get currentTalentPage() : int
      {
         return this._currentTalentPage;
      }
      
      public function set currentTalentPage(param1:int) : void
      {
         this._currentTalentPage = param1;
         this.getTalentSkillModel(0).dispatchChange();
      }
      
      public function getTalentSkillModel(param1:int) : TalentSkillModel
      {
         var _loc2_:TalentSkillModel = null;
         _loc2_ = this.dict[param1];
         if(_loc2_ == null)
         {
            this.dict[param1] = new TalentSkillModel(TalentSkillTypeDef.indexToType(param1));
            _loc2_ = this.dict[param1];
            _loc2_.addEventListener(Event.CHANGE,this.onTalentSkillModelChanged);
         }
         return _loc2_;
      }
      
      public function getTalentAndListen(param1:int, param2:Function, param3:Boolean = true) : Vector.<TalentSkillModel>
      {
         var _loc4_:Vector.<TalentSkillModel> = null;
         var _loc5_:TalentSkillModel = null;
         if(param2 != null)
         {
            if(!this.callbackDic.hasOwnProperty(param1))
            {
               this.callbackDic[param1] = new Dictionary();
            }
            this.callbackDic[param1][param2] = param2;
         }
         if(param1 == TalentSkillTypeDef.DEFAULT)
         {
            _loc4_ = Vector.<TalentSkillModel>([this.getTalentSkillModel(0),this.getTalentSkillModel(1),this.getTalentSkillModel(2)]);
         }
         else
         {
            _loc4_ = Vector.<TalentSkillModel>([this.getTalentSkillModel(TalentSkillTypeDef.typeToIndex(param1,param1))]);
         }
         if(param3)
         {
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_.checkData())
               {
                  this.requestRefreshTalent(_loc4_);
                  break;
               }
            }
         }
         return _loc4_;
      }
      
      public function removeListener(param1:int, param2:Function) : void
      {
         if(this.callbackDic.hasOwnProperty(param1) && this.callbackDic[param1][param2])
         {
            delete this.callbackDic[param1][param2];
         }
      }
      
      public function get talentDict() : Dictionary
      {
         return this.dict;
      }
      
      public function getMajorRoleCurrentSkillAndListen(param1:Function) : TalentSkillModel
      {
         return this.getTalentAndListen(TalentSkillTypeDef.DEFAULT,param1)[this.currentTalentPage == -1?0:this.currentTalentPage];
      }
      
      private function onTalentSkillModelChanged(param1:Event) : void
      {
         var _loc3_:Function = null;
         var _loc4_:* = 0;
         var _loc2_:TalentSkillModel = param1.target as TalentSkillModel;
         if(_loc2_.type == TalentSkillTypeDef.DEFAULT)
         {
            _loc4_ = 0;
            while(_loc4_ < 3)
            {
               if(this.callbackDic[_loc4_])
               {
                  for each(_loc3_ in this.callbackDic[_loc4_])
                  {
                     _loc3_.call(this);
                  }
               }
               _loc4_++;
            }
         }
         else if(this.callbackDic[_loc2_.type])
         {
            for each(_loc3_ in this.callbackDic[_loc2_.type])
            {
               _loc3_.call(this);
            }
         }
      }
      
      public function markAllTalentNeedRsync() : void
      {
         var _loc1_:TalentSkillModel = null;
         for each(_loc1_ in this.dict)
         {
            _loc1_.markNdSync();
         }
      }
      
      public function requestRefreshTalent(param1:Vector.<TalentSkillModel>) : void
      {
         new RequestGetTalentCommand(param1).call();
      }
      
      public function syncTalentSkillModel(param1:TalentPageData) : void
      {
         var tsgd:TalentSkillGroupData = null;
         var id:int = 0;
         var talentPageData:TalentPageData = param1;
         var getSelectedId:Function = function(param1:Array):int
         {
            var _loc2_:int = 0;
            while(_loc2_ < param1.length)
            {
               if(TalentSkillData(param1[_loc2_]).selected)
               {
                  return TalentSkillData(param1[_loc2_]).id;
               }
               _loc2_++;
            }
            return 0;
         };
         var tsm:TalentSkillModel = this.getTalentSkillModel(talentPageData.index);
         tsm.special = getSelectedId(talentPageData.specialGroupData.skillDatas);
         tsm.normal = getSelectedId(talentPageData.normalGroupData.skillDatas);
         tsm.beast = getSelectedId(talentPageData.beastGroupData.skillDatas);
         var skills:Array = [];
         for each(tsgd in talentPageData.skillGroupDatas)
         {
            id = getSelectedId(tsgd.skillDatas);
            if(id)
            {
               skills.push(id);
            }
         }
         tsm.skills = skills;
         tsm.name = talentPageData.name;
         tsm.talentPageData = talentPageData;
         tsm.page = talentPageData.index;
         tsm.responsed();
         tsm.dispatchChange();
      }
   }
}
