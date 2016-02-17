package guide.command
{
   public class RemoveGuideCommand extends BaseGuideCommand
   {
       
      public var id:int;
      
      public function RemoveGuideCommand(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}
