package rankingStore.cmd
{
   public class CloseStoreCommand extends BaseRankingStoreCommand
   {
       
      public var type:int;
      
      public function CloseStoreCommand(param1:int)
      {
         super();
         this.type = param1;
      }
   }
}
