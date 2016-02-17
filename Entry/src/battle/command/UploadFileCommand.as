package battle.command
{
   public class UploadFileCommand extends BattleCommand
   {
       
      public var operType:int;
      
      public function UploadFileCommand(param1:int = 0)
      {
         super();
         this.operType = param1;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
      }
   }
}
