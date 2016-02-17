package skill.data
{
   public class NinjaSkillInfo
   {
       
      public var ninjaSeq:uint;
      
      public var ninjaId:uint;
      
      public var currentLocation:uint;
      
      public var skillPositionInfos:Array;
      
      public function NinjaSkillInfo()
      {
         this.skillPositionInfos = [];
         super();
      }
   }
}
