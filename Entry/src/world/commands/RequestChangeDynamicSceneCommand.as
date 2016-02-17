package world.commands
{
   public class RequestChangeDynamicSceneCommand extends BaseWorldCommand
   {
       
      public var type:int;
      
      public var operate:int;
      
      public function RequestChangeDynamicSceneCommand(param1:int, param2:int)
      {
         super();
         this.type = param1;
         this.operate = param2;
      }
   }
}
