package majorRole.commands
{
   import majorRole.model.TalentSkillModel;
   
   public class RequestGetTalentCommand extends BaseMajorRoleCommand
   {
       
      public var talentSkillModel:Vector.<TalentSkillModel>;
      
      public function RequestGetTalentCommand(param1:Vector.<TalentSkillModel>)
      {
         super();
         this.talentSkillModel = param1;
      }
      
      public function get type() : int
      {
         return this.talentSkillModel[0].type;
      }
   }
}
