package guide.command
{
   public class DisplayGuideCommand extends BaseGuideCommand
   {
       
      public var id:int;
      
      public function DisplayGuideCommand(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}
