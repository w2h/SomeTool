package dungeon.data
{
   import cfgData.dataStruct.DungeonGroupInfoCFG;
   
   public class DungeonChapterInfo
   {
       
      public var id:uint;
      
      public var name:String;
      
      public var dungeons:Vector.<dungeon.data.DungeonInfo>;
      
      public var qualified:Boolean;
      
      public var dungeonCount:uint;
      
      public var cfg:DungeonGroupInfoCFG;
      
      public var selected:Boolean;
      
      public var position:Number;
      
      public function DungeonChapterInfo()
      {
         super();
      }
   }
}
