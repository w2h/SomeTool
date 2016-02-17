package dungeon.proxy
{
   import dungeon.data.DungeonInfo;
   
   public interface IDailySpecialDungeonClient
   {
       
      function updateSpecialDungeons(param1:Vector.<DungeonInfo>) : void;
      
      function enableIconFlash(param1:Boolean) : void;
   }
}
