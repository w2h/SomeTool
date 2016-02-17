package player.commands
{
   public class SetAllLeaderPlayerPosAndDirCommand extends BasePlayerCommand
   {
       
      public var ninjiaList:Vector.<uint>;
      
      public var positionXList:Vector.<int>;
      
      public var positionYList:Vector.<int>;
      
      public var directionList:Vector.<int>;
      
      public function SetAllLeaderPlayerPosAndDirCommand(param1:Vector.<uint>, param2:Vector.<int>, param3:Vector.<int>, param4:Vector.<int>)
      {
         super();
         this.ninjiaList = param1;
         this.positionXList = param2;
         this.positionYList = param3;
         this.directionList = param4;
      }
   }
}
