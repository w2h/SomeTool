package user.data
{
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import cfgData.dataStruct.NinjaInfoCFG;
   import cfgData.dataStruct.NinjaLevelInfoCFG;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import majorRole.def.MajorNinjaDef;
   import base.ApplicationData;
   
   public class NinjaInfoConfig
   {
      
      private static var ninjaInfoMap:Dictionary = new Dictionary();
      
      private static var ninjaLevelInfoMap:Dictionary = new Dictionary();
      
      public static var ninjaConfigXml:XML;
      
      public static var levelConfigXml:XML;
      
      private static var inited:Boolean;
      
      public static var ninjaBin:ByteArray;
      
      public static var levelBin:ByteArray;
       
      public function NinjaInfoConfig()
      {
         super();
      }
      
      private static function init() : void
      {
         var _loc1_:Dictionary = null;
         var _loc2_:NinjaLevelInfo = null;
         var _loc3_:NinjaInfoCFG = null;
         var _loc4_:NinjaLevelInfoCFG = null;
         if(inited == true)
         {
            return;
         }
         inited = true;
         ninjaInfoMap = CFGDataLibs.parseData(ninjaBin,CFGDataEnum.ENUM_NinjaInfoCFG);
         for each(_loc3_ in ninjaInfoMap)
         {
            _loc3_.attributeDescription = getAttributeDescription(_loc3_.attributeDescription,_loc3_.name);
         }
         _loc1_ = new Dictionary();
         ninjaLevelInfoMap[1] = new Dictionary();
         ninjaLevelInfoMap[2] = new Dictionary();
         ninjaLevelInfoMap[3] = new Dictionary();
         ninjaLevelInfoMap[4] = new Dictionary();
         _loc1_ = CFGDataLibs.parseData(levelBin,CFGDataEnum.ENUM_NinjaLevelInfoCFG);
         for each(_loc4_ in _loc1_)
         {
            _loc2_ = new NinjaLevelInfo(1,_loc4_.level,_loc4_.upgradeExp1,_loc4_.totalUpgradeExp1,_loc4_.maxLeaderShip,_loc4_.maxNinjaOnFormation);
            ninjaLevelInfoMap[1][_loc2_.level] = _loc2_;
            _loc2_ = new NinjaLevelInfo(2,_loc4_.level,_loc4_.upgradeExp2,_loc4_.totalUpgradeExp2,_loc4_.maxLeaderShip,_loc4_.maxNinjaOnFormation);
            ninjaLevelInfoMap[2][_loc2_.level] = _loc2_;
            _loc2_ = new NinjaLevelInfo(3,_loc4_.level,_loc4_.upgradeExp3,_loc4_.totalUpgradeExp3,_loc4_.maxLeaderShip,_loc4_.maxNinjaOnFormation);
            ninjaLevelInfoMap[3][_loc2_.level] = _loc2_;
            _loc2_ = new NinjaLevelInfo(4,_loc4_.level,_loc4_.upgradeExp4,_loc4_.totalUpgradeExp4,_loc4_.maxLeaderShip,_loc4_.maxNinjaOnFormation);
            ninjaLevelInfoMap[4][_loc2_.level] = _loc2_;
         }
      }
      
      public static function getNinjaCfgInfo(param1:uint) : NinjaInfoCFG
      {
         init();
         if(MajorNinjaDef.isMajorNinjaId(param1))
         {
            var param1:uint = MajorNinjaDef.toBaseMajorId(param1);
         }
         return ninjaInfoMap[param1];
      }
      
      public static function getNinjaLevelInfo(param1:uint, param2:uint) : NinjaLevelInfo
      {
         init();
         return ninjaLevelInfoMap[param1][param2];
      }
      
      public static function getLevelInfoByTotalExp(param1:uint, param2:uint) : NinjaLevelInfo
      {
         init();
         var _loc3_:int = 1;
         var _loc4_:NinjaLevelInfo = getNinjaLevelInfo(param1,_loc3_);
         while(true)
         {
            if(param2 >= _loc4_.totalUpgradeExp)
            {
               _loc3_++;
               _loc4_ = getNinjaLevelInfo(param1,_loc3_);
               continue;
            }
            break;
         }
         return _loc4_;
      }
      
      public static function getSelfNinjaLevelInfo() : NinjaLevelInfo
      {
         var _loc1_:NinjaInfoCFG = null;
         _loc1_ = getNinjaCfgInfo(ApplicationData.singleton.selfInfo.ninja);
         return getNinjaLevelInfo(_loc1_.levelType,ApplicationData.singleton.selfInfo.level);
      }
      
      public static function getNinjaLevelInfoByExp(param1:uint, param2:int) : NinjaLevelInfo
      {
         init();
         var _loc3_:int = 1;
         var _loc4_:NinjaLevelInfo = getNinjaLevelInfo(param1,_loc3_);
         while(true)
         {
            if(param2 >= _loc4_.upgradeExp)
            {
               _loc3_++;
               _loc4_ = getNinjaLevelInfo(param1,_loc3_);
               continue;
            }
            break;
         }
         return _loc4_;
      }
      
      public static function getNinjaLevelInfoByAddExp(param1:uint, param2:uint, param3:int, param4:Function = null) : NinjaLevelInfo
      {
         init();
         var _loc5_:NinjaLevelInfo = getNinjaLevelInfo(param1,param2);
         if(param3 > _loc5_.upgradeExp)
         {
            var param3:int = param3 - _loc5_.upgradeExp;
            return getNinjaLevelInfoByAddExp(param1,param2 + 1,param3,param4);
         }
         param4 && param4(param3);
         return _loc5_;
      }
      
      public static function getAttributeDescription(param1:String, param2:String) : String
      {
         var _loc3_:Array = null;
         if(param1 == "")
         {
            return "";
         }
         _loc3_ = String(param1).split(",");
         if(_loc3_.length == 0)
         {
            return "";
         }
         if(_loc3_.length == 1)
         {
            return "<font color = \'#cccccc\'>" + getAttributeText(_loc3_[0]) + "</font><font color = \'#a2844f\'>是</font><font color = \'#cccccc\'>" + param2 + "</font><font color = \'#a2844f\'>的重要属性。</font>";
         }
         if(_loc3_.length == 2)
         {
            return "<font color = \'#cccccc\'>" + getAttributeText(_loc3_[0]) + "</font><font color = \'#a2844f\'>和</font><font color = \'#cccccc\'>" + getAttributeText(_loc3_[1]) + "</font><font color = \'#a2844f\'>是</font><font color = \'#cccccc\'>" + param2 + "</font><font color = \'#a2844f\'>的重要属性。</font>";
         }
         return "";
      }
      
      private static function getAttributeText(param1:int) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
