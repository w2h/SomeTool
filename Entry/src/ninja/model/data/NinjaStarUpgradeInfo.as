package ninja.model.data
{
   public class NinjaStarUpgradeInfo
   {
       
      public var pieceId:uint;
      
      public var pieceNum:uint;
      
      public var needPieceNum:uint;
      
      public var needMoney:uint;
      
      public var beginStarLevel:uint;
      
      public var starLevelDetailInfos:Vector.<ninja.model.data.NinjaStarLevelDetailInfo>;
      
      public function NinjaStarUpgradeInfo()
      {
         super();
      }
   }
}
