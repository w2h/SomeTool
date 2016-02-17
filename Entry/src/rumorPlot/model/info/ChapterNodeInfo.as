package rumorPlot.model.info
{
   public class ChapterNodeInfo
   {
       
      public var id:int;
      
      public var plotID:int;
      
      public var isOpen:int;
      
      public var maxGood:int;
      
      public var rewardGift:uint;
      
      public var rewardCoin:uint;
      
      public var needGood:uint;
      
      public var needBranch:uint;
      
      public var branchDesc:String;
      
      public var needBattle:uint;
      
      public var battleDesc:String;
      
      public var serverCheck:int;
      
      public function ChapterNodeInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         this.id = param1.@id;
         this.plotID = param1.@plotID;
         this.isOpen = param1.@isOpen;
         this.maxGood = param1.@maxGood;
         this.rewardGift = param1.@rewardGift;
         this.rewardCoin = param1.@rewardCoin;
         this.needGood = param1.@needGood;
         this.needBranch = param1.@needBranch;
         this.branchDesc = param1.@branchDesc;
         this.needBattle = param1.@needBattle;
         this.battleDesc = param1.@battleDesc;
         this.serverCheck = param1.@serverCheck;
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <ChapterNode/>;
         this.id && (_loc1_.@id = this.id);
         this.plotID && (_loc1_.@plotID = this.plotID);
         this.isOpen && (_loc1_.@isOpen = this.isOpen);
         this.maxGood && (_loc1_.@maxGood = this.maxGood);
         this.rewardGift && (_loc1_.@rewardGift = this.rewardGift);
         this.rewardCoin && (_loc1_.@rewardCoin = this.rewardCoin);
         this.needGood && (_loc1_.@needGood = this.needGood);
         this.needBranch && (_loc1_.@needBranch = this.needBranch);
         this.branchDesc && (_loc1_.@branchDesc = this.branchDesc);
         this.needBattle && (_loc1_.@needBattle = this.needBattle);
         this.battleDesc && (_loc1_.@battleDesc = this.battleDesc);
         this.serverCheck && (_loc1_.@serverCheck = this.serverCheck);
         return _loc1_;
      }
   }
}
