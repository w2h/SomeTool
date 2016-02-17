package user.command
{
   import serverProto.user.ProtoTransfigurationInfo;
   
   public class RequestTransfigurationCommand extends BaseUserCommand
   {
       
      public var ninjaSeq:uint;
      
      public var isAutoBuy:Boolean;
      
      public var type:int;
      
      public var info:ProtoTransfigurationInfo;
      
      public function RequestTransfigurationCommand(param1:uint, param2:Boolean, param3:int)
      {
         super();
         this.ninjaSeq = param1;
         this.isAutoBuy = param2;
         this.type = param3;
      }
   }
}
