package cfgData.dataStruct
{
   public class SummonMonsterCFG
   {
       
      public var id:int;
      
      public var name:String = "";
      
      public var type:int;
      
      public var artisticId:int;
      
      public var aquireCardNum:int;
      
      public var aquireCardId:int;
      
      public var isCard:int;
      
      public var baseLife:int;
      
      public var baseAttack:int;
      
      public var baseDefense:int;
      
      public var baseNinjaAttack:int;
      
      public var baseResist:int;
      
      public var skillName:String = "";
      
      public var desc:String = "";
      
      public var majorSkill:Array;
      
      public var openLevel:int;
      
      public var keyWord1:String = "";
      
      public var keyWord2:String = "";
      
      public var achievedWay:String = "";
      
      public var rewards:Array;
      
      public function SummonMonsterCFG()
      {
         this.majorSkill = new Array();
         this.rewards = new Array();
         super();
      }
   }
}
