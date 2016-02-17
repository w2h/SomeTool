package cfgData.dataStruct
{
   public class DungeonInfoCFG
   {
       
      public var id:int;
      
      public var name:String = "";
      
      public var subSceneId:int;
      
      public var type:int;
      
      public var groupId:int;
      
      public var groupSeqNum:int;
      
      public var mode:int;
      
      public var clearanceType:int;
      
      public var clearanceParam:String = "";
      
      public var clearanceDescribe:String = "";
      
      public var gifts:Array;
      
      public var gifts2:Array;
      
      public var gifts3:Array;
      
      public var gifts4:Array;
      
      public var gifts5:Array;
      
      public var dungeonImg:int;
      
      public var openDungeonBoxParam:String = "";
      
      public var costHp:int;
      
      public var wipeOutNeedTime:int;
      
      public var upperLevel:int;
      
      public var bestNinjaRarity:int;
      
      public var coverNinja:uint;
      
      public var recommendCombat:uint;
      
      public var passBonus:uint;
      
      public var passBonusNum:uint;
      
      public function DungeonInfoCFG()
      {
         this.gifts = new Array();
         this.gifts2 = new Array();
         this.gifts3 = new Array();
         this.gifts4 = new Array();
         this.gifts5 = new Array();
         super();
      }
   }
}
