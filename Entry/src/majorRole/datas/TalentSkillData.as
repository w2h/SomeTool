package majorRole.datas
{
   import cfgData.dataStruct.SkillCFG;
   
   public class TalentSkillData
   {
       
      public var id:uint;
      
      public var unlockLevel:int;
      
      public var enabled:Boolean = false;
      
      public var selected:Boolean = false;
      
      public var skillCfg:SkillCFG;
      
      public function TalentSkillData()
      {
         super();
      }
   }
}
