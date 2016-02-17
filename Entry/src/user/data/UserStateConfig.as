package user.data
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.util.StateInfo;
   
   public class UserStateConfig
   {
      
      public static var xml:XML;
      
      private static var stateCfgInfoMap:Dictionary = new Dictionary();
      
      private static var inited:Boolean;
       
      public function UserStateConfig()
      {
         super();
      }
      
      private static function init() : void
      {
         var _loc1_:* = 0;
         var _loc2_:UserStateCfgInfo = null;
         var _loc3_:XMLList = null;
         var _loc4_:XMLList = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:* = 0;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         if(inited == true)
         {
            return;
         }
         inited = true;
         _loc3_ = xml.StateInfo.BaseStateInfo;
         _loc4_ = xml.RefInfo.BaseStateRefInfo;
         _loc1_ = 0;
         while(_loc1_ < _loc3_.length())
         {
            _loc2_ = new UserStateCfgInfo();
            _loc5_ = _loc3_[_loc1_];
            _loc7_ = _loc5_.@id;
            _loc8_ = _loc5_.@name;
            if(String(_loc5_.@conflictList) != "")
            {
               _loc9_ = String(_loc5_.@conflictList).split(",");
            }
            else
            {
               _loc9_ = [];
            }
            if(String(_loc5_.@bindingList) != "")
            {
               _loc2_.bindingList = String(_loc5_.@bindingList).split(",");
            }
            else
            {
               _loc2_.bindingList = [];
            }
            _loc2_.id = _loc7_;
            _loc2_.name = _loc8_;
            _loc2_.conflictList = _loc9_;
            stateCfgInfoMap[_loc2_.id] = _loc2_;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _loc4_.length())
         {
            _loc6_ = _loc4_[_loc1_];
            _loc7_ = _loc6_.@id;
            _loc2_ = stateCfgInfoMap[_loc7_];
            if(String(_loc6_.@trueStateRefList) != "")
            {
               _loc2_.trueRefList = String(_loc6_.@trueStateRefList).split(",");
            }
            else
            {
               _loc2_.trueRefList = [];
            }
            if(String(_loc6_.@falseStateRefList) != "")
            {
               _loc2_.falseRefList = String(_loc6_.@falseStateRefList).split(",");
            }
            else
            {
               _loc2_.falseRefList = [];
            }
            _loc1_++;
         }
      }
      
      public static function getUserStateInfo() : StateInfo
      {
         var _loc1_:StateInfo = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:UserStateCfgInfo = null;
         init();
         _loc1_ = new StateInfo();
         for each(_loc5_ in stateCfgInfoMap)
         {
            _loc1_.setFlagName(_loc5_.name,_loc5_.id);
            _loc1_.addFlagConflictInfo(_loc5_.id,_loc5_.conflictList);
            if(_loc5_.trueRefList != null)
            {
               _loc1_.addFlagRef(_loc5_.id,[],_loc5_.trueRefList);
            }
            if(_loc5_.bindingList != null)
            {
               _loc1_.addBindingInfo(_loc5_.id,_loc5_.bindingList);
            }
         }
         _loc1_.checkRef();
         return _loc1_;
      }
   }
}
