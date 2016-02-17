package crew.cmd
{
   import RSModel.command.RSModelCommand;
   import crew.data.NinjaPropsInfo;
   
   public class RequestNinjaPropsTipsInfoCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var data:NinjaPropsInfo;
      
      public function RequestNinjaPropsTipsInfoCommand(param1:uint)
      {
         super();
         this.id = param1;
      }
   }
}
