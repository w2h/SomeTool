package dungeon.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RequestBeginDungeonCommand extends NarutoCommand
   {
       
      public var dungeonId:int;
      
      public var dungeonType:int;
      
      public var difficultyType:int;
      
      public function RequestBeginDungeonCommand(param1:int, param2:int, param3:int = 0)
      {
         super();
         this.dungeonId = param1;
         this.dungeonType = param2;
         this.difficultyType = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
