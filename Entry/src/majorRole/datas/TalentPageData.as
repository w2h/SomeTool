package majorRole.datas
{
   public class TalentPageData
   {
       
      public var index:int;
      
      public var name:String;
      
      public var specialGroupData:majorRole.datas.TalentSkillGroupData;
      
      public var normalGroupData:majorRole.datas.TalentSkillGroupData;
      
      public var skillGroupDatas:Array;
      
      public var beastGroupData:majorRole.datas.TalentSkillGroupData;
      
      public function TalentPageData()
      {
         this.skillGroupDatas = [];
         super();
      }
   }
}
