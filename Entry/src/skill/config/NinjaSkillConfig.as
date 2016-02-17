package skill.config
{
   import flash.utils.Dictionary;
   import cfgData.dataStruct.NinjaSkillCFG;
   import cfgData.dataStruct.SkillCFG;
   import com.tencent.morefun.naruto.util.Assert;
   
   public class NinjaSkillConfig
   {
      
      private static var _instance:skill.config.NinjaSkillConfig;
       
      private var dict:Dictionary;
      
      public function NinjaSkillConfig()
      {
         super();
         Assert(_instance == null,"can\'t new NinjaSkillConfig Class");
      }
      
      public static function get instance() : skill.config.NinjaSkillConfig
      {
         return _instance = _instance || new skill.config.NinjaSkillConfig();
      }
      
      public function setData(param1:Dictionary) : void
      {
         this.dict = param1;
      }
      
      public function getNinjaSkillCfg(param1:uint) : NinjaSkillCFG
      {
         return this.dict[param1];
      }
      
      public function getSkillCfgsByNinjaId(param1:uint) : Array
      {
         var _loc2_:NinjaSkillCFG = this.getNinjaSkillCfg(param1);
         if(_loc2_ == null)
         {
            throw Error("忍者ID：" + param1 + " 没找到,请检查unit.xls和unitskill.xls");
         }
         return this.getSkillCfgsBySkillIDs(_loc2_.specials.concat(_loc2_.normals,_loc2_.skills));
      }
      
      public function getSkillCfgsBySkillIDs(param1:Array) : Array
      {
         var _loc3_:uint = 0;
         var _loc4_:SkillCFG = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = SkillConfig.instance.getSkill(_loc3_);
            if(_loc4_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
   }
}
