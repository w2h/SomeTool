package cfgData.dataStruct
{
   public class DungeonGroupInfoCFG
   {
       
      public var id:int;
      
      public var name:String = "";
      
      public var chapterGifts:Array;
      
      public var fullScoreGifts:Array;
      
      public var levelUnlock:uint;
      
      public var chapterGiftTask:uint;
      
      public var fullScoreGiftTask:uint;
      
      public function DungeonGroupInfoCFG()
      {
         this.chapterGifts = new Array();
         this.fullScoreGifts = new Array();
         super();
      }
   }
}
