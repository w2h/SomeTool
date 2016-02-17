package guide.command
{
   public class ShowItemAchievedWayMarkBrnCommand extends BaseGuideCommand
   {
       
      public var targetName:String;
      
      public function ShowItemAchievedWayMarkBrnCommand(param1:String)
      {
         super();
         this.targetName = param1;
      }
   }
}
