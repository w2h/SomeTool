package throughTheBeast.utils
{
   import throughTheBeast.data.BeastData;
   import throughTheBeast.data.BeastCommonData;
   import cfgData.dataStruct.SummonMonsterCFG;
   import cfgData.dataStruct.SkillCFG;
   import base.ApplicationData;
   import skill.config.SkillConfig;
   
   public class BeastUtils
   {
       
      public function BeastUtils()
      {
         super();
         throw new Error(BeastUtils + " can not be instantiated.");
      }
      
      public static function getBeastConfById(param1:uint) : BeastData
      {
         var _loc2_:SummonMonsterCFG = BeastCommonData.beastCfgDatas[param1];
         var _loc3_:BeastData = new BeastData();
         _loc3_.id = param1;
         _loc3_.name = _loc2_.name;
         _loc3_.description = _loc2_.desc;
         _loc3_.type = _loc2_.type;
         _loc3_.achievedWay = _loc2_.achievedWay;
         _loc3_.baseProps = Vector.<int>([_loc2_.baseLife,_loc2_.baseAttack,_loc2_.baseDefense,_loc2_.baseNinjaAttack,_loc2_.baseResist]);
         return _loc3_;
      }
      
      public static function getSkillCfgById(param1:uint) : SkillCFG
      {
         var _loc2_:int = ApplicationData.singleton.selfInfo.professions;
         var _loc3_:SummonMonsterCFG = BeastCommonData.beastCfgDatas[param1];
         var _loc4_:uint = _loc3_.majorSkill[_loc2_ - 1];
         var _loc5_:SkillCFG = SkillConfig.instance.getSkill(_loc4_);
         return _loc5_;
      }
      
      public static function getSkillTypesById(param1:uint) : Array
      {
         var _loc2_:SkillCFG = getSkillCfgById(param1);
         return _loc2_.type1;
      }
   }
}
