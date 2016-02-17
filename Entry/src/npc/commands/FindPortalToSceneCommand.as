package npc.commands
{
   public class FindPortalToSceneCommand extends BaseNpcCommand
   {
       
      public var sceneId:int;
      
      public var portalId:int;
      
      public function FindPortalToSceneCommand(param1:int)
      {
         super();
         this.sceneId = param1;
      }
   }
}
