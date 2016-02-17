package user.data
{
   public class NinjaLevelInfo
   {
       
      public var levelType:uint;
      
      public var level:uint;
      
      public var upgradeExp:uint;
      
      public var totalUpgradeExp:uint;
      
      public var maxLeaderShip:uint;
      
      public var maxNinjaOnFormation:uint;
      
      public function NinjaLevelInfo(param1:uint, param2:uint, param3:uint, param4:uint, param5:uint, param6:uint)
      {
         super();
         this.levelType = param1;
         this.level = param2;
         this.upgradeExp = param3;
         this.totalUpgradeExp = param4;
         this.maxLeaderShip = param5;
         this.maxNinjaOnFormation = param6;
      }
   }
}
