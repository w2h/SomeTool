package home.cmd
{
   import serverProto.inc.ProtoPlayerKey;
   
   public class BuyFlowerCommand extends BaseHomeCommand
   {
       
      public var playerid:ProtoPlayerKey;
      
      public function BuyFlowerCommand(param1:ProtoPlayerKey)
      {
         this.playerid = param1;
         super();
      }
   }
}
