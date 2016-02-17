package user.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import user.data.UserInfo;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import user.def.UserModelKeyDef;
   import ninja.model.data.NinjaInfo;
   import ninja.model.data.FormationInfo;
   import skill.data.SkillInfo;
   import def.ModelDef;
   
   public class UserModel extends BaseModel
   {
       
      private var userInfoMap:Vector.<UserInfo>;
      
      public function UserModel()
      {
         this.userInfoMap = new Vector.<UserInfo>();
         super(ModelDef.USER);
      }
      
      public function updateUserInfo(param1:UserInfo) : void
      {
         var _loc2_:UserInfo = null;
         _loc2_ = this.getUserInfo(param1.uin,param1.role,param1.svrId);
         param1.dispathBaseUpdate();
         this.dispModelEvent(ModelEvent.UPDATE,UserModelKeyDef.USER_INFO,_loc2_,param1);
      }
      
      public function updateUserDetail(param1:uint, param2:int, param3:int, param4:Vector.<NinjaInfo>, param5:FormationInfo) : void
      {
         var _loc6_:UserInfo = null;
         _loc6_ = this.getUserInfo(_loc6_.uin,_loc6_.role,_loc6_.svrId);
         if(_loc6_ == null)
         {
            return;
         }
         _loc6_.formationInfo = param5;
         _loc6_.ninjaInfoList = param4;
         _loc6_.dispathNinjaUpdate();
         this.dispModelEvent(ModelEvent.UPDATE,UserModelKeyDef.USER_DETAIL,_loc6_,_loc6_);
      }
      
      public function removeUserInfo(param1:uint, param2:int, param3:int) : void
      {
         var _loc4_:UserInfo = null;
         _loc4_ = this.getUserInfo(_loc4_.uin,_loc4_.role,_loc4_.svrId);
         if(_loc4_)
         {
            this.userInfoMap.splice(this.userInfoMap.indexOf(_loc4_),1);
            dispModelEvent(ModelEvent.REMOVE,UserModelKeyDef.USER_INFO,_loc4_,null);
         }
      }
      
      public function updateUserSkill(param1:uint, param2:int, param3:int, param4:SkillInfo) : void
      {
         var _loc5_:UserInfo = null;
         _loc5_ = this.getUserInfo(_loc5_.uin,_loc5_.role,_loc5_.svrId);
         if(_loc5_ == null)
         {
            return;
         }
         _loc5_.skillInfo = param4;
         this.dispModelEvent(ModelEvent.UPDATE,UserModelKeyDef.USER_SKILL,_loc5_,_loc5_);
      }
      
      public function updateUserSkillLearnIds(param1:uint, param2:int, param3:int, param4:Array) : void
      {
         var _loc5_:UserInfo = null;
         _loc5_ = this.getUserInfo(_loc5_.uin,_loc5_.role,_loc5_.svrId);
         if(_loc5_ == null)
         {
            return;
         }
         _loc5_.skillInfo.learnedSkillId = param4;
         this.dispModelEvent(ModelEvent.UPDATE,UserModelKeyDef.USER_SKILL_LEARN_IDS,_loc5_,_loc5_);
      }
      
      public function updateUserNinjaSkillPositionList(param1:uint, param2:int, param3:int, param4:uint, param5:Array) : void
      {
         var _loc6_:UserInfo = null;
         var _loc7_:NinjaInfo = null;
         _loc6_ = this.getUserInfo(_loc6_.uin,_loc6_.role,_loc6_.svrId);
         if(_loc6_ == null)
         {
            return;
         }
         for each(_loc7_ in _loc6_.ninjaInfoList)
         {
            if(_loc7_.sequence == param4)
            {
               this.dispModelEvent(ModelEvent.UPDATE,UserModelKeyDef.USER_SKILL_NINJA_SKILL_POSITION_INFOS,param5,param5);
               break;
            }
         }
      }
      
      public function setUserInfo(param1:UserInfo) : void
      {
         if(this.userInfoMap.indexOf(param1) != -1)
         {
            return;
         }
         this.userInfoMap.push(param1);
      }
      
      public function getUserInfo(param1:uint, param2:int, param3:int) : UserInfo
      {
         var _loc4_:UserInfo = null;
         var _loc5_:UserInfo = null;
         var _loc6_:int = 0;
         while(_loc6_ < this.userInfoMap.length)
         {
            _loc4_ = this.userInfoMap[_loc6_];
            if(_loc4_.uin == param1 && _loc4_.role == param2 && _loc4_.svrId == param3)
            {
               _loc5_ = _loc4_;
               break;
            }
            _loc6_++;
         }
         if(_loc5_ == null)
         {
            _loc5_ = new UserInfo();
            _loc5_.uin = param1;
            _loc5_.role = param2;
            _loc5_.svrId = param3;
            this.userInfoMap.push(_loc5_);
         }
         return _loc5_;
      }
   }
}
