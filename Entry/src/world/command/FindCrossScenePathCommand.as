package world.command
{
   import world.commands.BaseWorldCommand;
   
   public class FindCrossScenePathCommand extends BaseWorldCommand
   {
       
      public var startSceneId:int;
      
      public var endSceneId:int;
      
      public var scenePath:Array;
      
      public function FindCrossScenePathCommand(param1:int, param2:int)
      {
         super();
         this.startSceneId = param1;
         this.endSceneId = param2;
      }
   }
}
