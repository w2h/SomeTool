package limitGifted.command
{
   import serverProto.challengeTower.ProtoChallengeTowerInfo;
   
   public class EnterGiftedCommand extends LimitGiftedCommand
   {
       
      public var type:int;
      
      public var info:ProtoChallengeTowerInfo;
      
      public function EnterGiftedCommand(param1:int, param2:ProtoChallengeTowerInfo = null)
      {
         super();
         this.type = param1;
         this.info = param2;
      }
   }
}
