package home.cmd
{
   public class ShowFlowerCommand extends BaseHomeCommand
   {
       
      public var info:String;
      
      public function ShowFlowerCommand(param1:String)
      {
         this.info = param1;
         super();
      }
   }
}
