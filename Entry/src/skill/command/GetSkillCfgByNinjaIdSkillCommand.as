package skill.command
{
   import RSModel.command.RSModelCommand;
   
   public class GetSkillCfgByNinjaIdSkillCommand extends RSModelCommand
   {
       
      public var list:Array;
      
      public var ninjaId:int;
      
      public function GetSkillCfgByNinjaIdSkillCommand(param1:uint)
      {
         super();
         this.ninjaId = param1;
      }
   }
}
