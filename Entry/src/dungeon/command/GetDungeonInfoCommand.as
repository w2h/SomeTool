package dungeon.command
{
   import RSModel.command.RSModelCommand;
   import dungeon.data.DungeonInfo;
   
   public class GetDungeonInfoCommand extends RSModelCommand
   {
       
      public var dupID:int;
      
      public var dupType:int;
      
      public var dupInfo:DungeonInfo;
      
      public function GetDungeonInfoCommand(param1:int, param2:int)
      {
         super();
         this.dupID = param1;
         this.dupType = param2;
      }
   }
}
