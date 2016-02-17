package dungeon.data
{
   import cfgData.dataStruct.DungeonInfoCFG;
   
   public class DungeonInfo
   {
       
      public var id:int;
      
      public var type:int;
      
      public var needPower:int;
      
      public var openLevel:int;
      
      public var bestEvaluate:int;
      
      public var passCount:int;
      
      public var passUpperCount:uint;
      
      public var recommended:Boolean;
      
      public var resetPassCountPrice:int;
      
      public var resetCount:uint;
      
      public var resetCountUpper:uint;
      
      public var unlocked:Boolean;
      
      public var daysUnlock:Vector.<uint>;
      
      public var cdtime:uint;
      
      public var levelsUnlock:Vector.<uint>;
      
      public var cfg:DungeonInfoCFG;
      
      public var showGuideIndicator:Boolean;
      
      public var highlight:Boolean;
      
      public var next:dungeon.data.DungeonInfo;
      
      public var prev:dungeon.data.DungeonInfo;
      
      public function DungeonInfo()
      {
         super();
      }
   }
}
