package npc.commands
{
   import flash.display.MovieClip;
   
   public class UpdateHomeNpcCommand extends BaseNpcCommand
   {
       
      public var wishTreeStatus:int;
      
      public var dispatchStatus:int;
      
      public var mc:MovieClip;
      
      public var hasBath:Boolean;
      
      public var openSpringBath:Boolean;
      
      public var taskStatus:int;
      
      public function UpdateHomeNpcCommand(param1:int = 2)
      {
         super(param1);
      }
   }
}
