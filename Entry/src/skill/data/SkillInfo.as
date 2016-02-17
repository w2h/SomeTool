package skill.data
{
   public class SkillInfo
   {
       
      public var fire:uint = 0;
      
      public var wood:uint = 0;
      
      public var learnedSkillId:Array;
      
      public function SkillInfo()
      {
         this.learnedSkillId = [];
         super();
      }
   }
}
