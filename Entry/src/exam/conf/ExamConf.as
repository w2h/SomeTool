package exam.conf
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import cfgData.CFGDataLibs;
   import exam.data.ExamLevelData;
   import cfgData.dataStruct.ExamConfCFG;
   import cfgData.CFGDataEnum;
   
   public class ExamConf
   {
      
      private static const CONF_LINK:String = "plugin.exam.examConf";
      
      private static const CONF_KEY:String = CFGDataEnum.ENUM_ExamConfCFG;
      
      private static var _confData:ByteArray;
      
      private static var _items:Dictionary;
       
      public function ExamConf()
      {
         super();
         throw new Error(ExamConf + " can not be instantiated.");
      }
      
      public static function initialize(param1:Plugin) : void
      {
         _confData = param1.getResource(param1.getPluginName())[CONF_LINK] as ByteArray;
         parse(CFGDataLibs.parseData(_confData,CONF_KEY));
      }
      
      public static function destroy() : void
      {
         _confData = null;
         _items = null;
      }
      
      public static function findLevelData(param1:uint) : ExamLevelData
      {
         if(_items == null)
         {
            return null;
         }
         return _items[param1];
      }
      
      public static function collectWipeoutConsumes() : Vector.<uint>
      {
         var _loc1_:Vector.<uint> = new Vector.<uint>();
         var _loc2_:uint = 1;
         while(_items[_loc2_])
         {
            _loc1_.push((_items[_loc2_] as ExamLevelData).consumeMoney);
            _loc2_++;
         }
         return _loc1_;
      }
      
      private static function parse(param1:Dictionary) : void
      {
         var _loc2_:ExamLevelData = null;
         var _loc3_:ExamConfCFG = null;
         _items = new Dictionary();
         for each(_loc3_ in param1)
         {
            _loc2_ = parseItem(_loc3_);
            _items[_loc2_.id] = _loc2_;
         }
      }
      
      private static function parseItem(param1:ExamConfCFG) : ExamLevelData
      {
         var _loc2_:ExamLevelData = new ExamLevelData();
         _loc2_.id = param1.id;
         _loc2_.battleId = param1.battleId;
         _loc2_.battlePower = param1.battlePower;
         _loc2_.earnMoney = param1.earnMoney;
         _loc2_.earnExp = param1.earnExp;
         _loc2_.consumeMoney = param1.consumeMoney;
         _loc2_.ninjaId = param1.ninjaId;
         _loc2_.rewardId = param1.rewardId;
         _loc2_.specialRewardId = param1.specRewardId;
         _loc2_.enemyIds = parseEnemyIds(param1);
         _loc2_.specialRewardDescription = parseSpecialItems(param1);
         _loc2_.rewardDescription = param1.rwdDesc;
         return _loc2_;
      }
      
      private static function parseEnemyIds(param1:ExamConfCFG) : Vector.<uint>
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Vector.<uint> = new Vector.<uint>();
         _loc2_.push(param1.enemyId1);
         _loc2_.push(param1.enemyId2);
         _loc2_.push(param1.enemyId3);
         _loc2_.push(param1.enemyId4);
         return _loc2_;
      }
      
      private static function parseSpecialItems(param1:ExamConfCFG) : Vector.<String>
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Vector.<String> = new Vector.<String>();
         if(param1.specRwd1 != "")
         {
            _loc2_.push(param1.specRwd1);
         }
         if(param1.specRwd2 != "")
         {
            _loc2_.push(param1.specRwd2);
         }
         if(param1.specRwd3 != "")
         {
            _loc2_.push(param1.specRwd3);
         }
         if(param1.specRwd4 != "")
         {
            _loc2_.push(param1.specRwd4);
         }
         return _loc2_;
      }
   }
}
