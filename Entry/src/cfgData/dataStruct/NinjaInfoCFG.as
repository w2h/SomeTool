package cfgData.dataStruct
{
   public class NinjaInfoCFG
   {
       
      public var id:int;
      
      public var name:String = "";
      
      public var type:int;
      
      public var filterTxt:String = "";
      
      public var title:String = "";
      
      public var artisticId:uint;
      
      public var awakenSkillNum:uint;
      
      public var levelType:int;
      
      public var occupyWidth:uint;
      
      public var occupyHeight:uint;
      
      public var baseLife:uint;
      
      public var growthLife:uint;
      
      public var baseBodyAttack:uint;
      
      public var growthBodyAttack:uint;
      
      public var baseBodyDefense:uint;
      
      public var growthBodyDefense:uint;
      
      public var baseNinjaAttack:uint;
      
      public var growthNinjaAttack:uint;
      
      public var baseNinjaDefense:uint;
      
      public var growthNinjaDefense:uint;
      
      public var baseSpeed:uint;
      
      public var baseCrit:uint;
      
      public var baseBodyStrike:uint;
      
      public var baseNinjaStrike:uint;
      
      public var baseChakraRecover:uint;
      
      public var continuousStrikeRate:uint;
      
      public var fireResist:int;
      
      public var windResist:int;
      
      public var thunderResist:int;
      
      public var soilResist:int;
      
      public var waterResist:int;
      
      public var mapSkill:int;
      
      public var starLevel:int;
      
      public var statePhase:int;
      
      public var AssembleCondition:String = "";
      
      public var comeFrom:String = "";
      
      public var showPropertys:Array;
      
      public var property:int;
      
      public var carreer:int;
      
      public var equipNum:int;
      
      public var description:String = "";
      
      public var attributeDescription:String = "";
      
      public var aquireCardId:int;
      
      public var rareness:int;
      
      public var achievedWay:int;
      
      public var sex:int;
      
      public var risingStarTatter:int;
      
      public var series:int;
      
      public var ninjaSeries:int;
      
      public var tupoLvl:int;
      
      public var showSkills:Array;
      
      public var tupoSkillId:uint;
      
      public var tupoSkillId11:uint;
      
      public function NinjaInfoCFG()
      {
         this.showPropertys = new Array();
         this.showSkills = new Array();
         super();
      }
   }
}
