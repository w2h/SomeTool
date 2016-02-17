package crew.data
{
   public class TransferRoleInfoData
   {
       
      public var cdTime:int;
      
      public var consumption:int;
      
      public var profession:int;
      
      public var currentProfessionIndex:int;
      
      public var professionList:Vector.<crew.data.TransferRoleProfessionData>;
      
      public function TransferRoleInfoData()
      {
         super();
      }
   }
}
