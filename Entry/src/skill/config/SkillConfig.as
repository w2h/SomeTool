package skill.config
{
   import flash.utils.Dictionary;
   import cfgData.dataStruct.SkillCFG;
   
   public class SkillConfig
   {
      
      private static var _instance:skill.config.SkillConfig;
       
      private var dict:Dictionary;
      
      public function SkillConfig()
      {
         super();
      }
      
      public static function get instance() : skill.config.SkillConfig
      {
         return _instance = _instance || new skill.config.SkillConfig();
      }
      
      public function setData(param1:Dictionary) : void
      {
         this.dict = param1;
      }
      
      public function getSkill(param1:uint) : SkillCFG
      {
         return this.dict[param1];
      }
   }
}
