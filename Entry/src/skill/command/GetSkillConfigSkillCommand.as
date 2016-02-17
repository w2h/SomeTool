package skill.command
{
   import RSModel.command.RSModelCommand;
   import skill.config.SkillConfig;
   
   public class GetSkillConfigSkillCommand extends RSModelCommand
   {
       
      public var skillConfig:SkillConfig;
      
      public function GetSkillConfigSkillCommand()
      {
         super();
      }
   }
}
