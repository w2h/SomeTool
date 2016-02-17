package rumorPlot.model.info
{
   public class ChapterInfo
   {
       
      public var id:uint;
      
      public var name:String;
      
      public var isOpen:int;
      
      public var ninjaID:uint;
      
      public var giftID:uint;
      
      public var extraGiftID:uint;
      
      public var needLevel:int;
      
      public var needGood:int;
      
      public var needStar:int;
      
      public var needNinja:String;
      
      public var needWakeNinja:String;
      
      public var chapterNodeVect:Vector.<rumorPlot.model.info.ChapterNodeInfo>;
      
      public var favorNode:rumorPlot.model.info.FavorNodeInfo;
      
      public var resultNodeVect:Vector.<rumorPlot.model.info.ResultNodeInfo>;
      
      public var sortID:int;
      
      public function ChapterInfo()
      {
         super();
      }
      
      public function decode(param1:XML) : void
      {
         var _loc4_:rumorPlot.model.info.ChapterNodeInfo = null;
         var _loc8_:rumorPlot.model.info.ResultNodeInfo = null;
         this.id = param1.@id;
         this.name = param1.@name;
         this.isOpen = param1.@isOpen;
         this.ninjaID = param1.@ninjaID;
         this.giftID = param1.@giftID;
         this.extraGiftID = param1.@extraGiftID;
         this.needLevel = param1.@needLevel;
         this.needGood = param1.@needGood;
         this.needStar = param1.@needStar;
         this.needNinja = param1.@needNinja;
         this.needWakeNinja = param1.@needWakeNinja;
         this.sortID = param1.@sortID;
         var _loc2_:XMLList = param1.ChapterNode;
         var _loc3_:int = _loc2_.length();
         this.chapterNodeVect = new Vector.<ChapterNodeInfo>();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = new rumorPlot.model.info.ChapterNodeInfo();
            _loc4_.decode(_loc2_[_loc5_]);
            this.chapterNodeVect.push(_loc4_);
            _loc5_++;
         }
         this.favorNode = new rumorPlot.model.info.FavorNodeInfo();
         var _loc6_:XMLList = param1.FavorNode;
         if(_loc6_ && _loc6_.length())
         {
            this.favorNode.decode(_loc6_[0]);
         }
         var _loc7_:XMLList = param1.ResultNode;
         _loc3_ = _loc7_.length();
         this.resultNodeVect = new Vector.<ResultNodeInfo>();
         _loc5_ = 0;
         while(_loc5_ < _loc3_)
         {
            _loc8_ = new rumorPlot.model.info.ResultNodeInfo();
            _loc8_.decode(_loc7_[_loc5_]);
            this.resultNodeVect.push(_loc8_);
            _loc5_++;
         }
      }
      
      public function encode() : XML
      {
         var _loc1_:XML = <Chapter/>;
         this.id && (_loc1_.@id = this.id);
         this.name && (_loc1_.@name = this.name);
         this.isOpen && (_loc1_.@isOpen = this.isOpen);
         this.ninjaID && (_loc1_.@ninjaID = this.ninjaID);
         this.giftID && (_loc1_.@giftID = this.giftID);
         this.extraGiftID && (_loc1_.@extraGiftID = this.extraGiftID);
         this.needLevel && (_loc1_.@needLevel = this.needLevel);
         this.needGood && (_loc1_.@needGood = this.needGood);
         this.needStar && (_loc1_.@needStar = this.needStar);
         this.needNinja && (_loc1_.@needNinja = this.needNinja);
         this.needWakeNinja && (_loc1_.@needWakeNinja = this.needWakeNinja);
         this.sortID && (_loc1_.@sortID = this.sortID);
         var _loc2_:int = this.chapterNodeVect?this.chapterNodeVect.length:0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.chapterNodeVect[_loc3_].encode());
            _loc3_++;
         }
         if(this.favorNode)
         {
            _loc1_.appendChild(this.favorNode.encode());
         }
         _loc2_ = this.resultNodeVect?this.resultNodeVect.length:0;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.appendChild(this.resultNodeVect[_loc3_].encode());
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
