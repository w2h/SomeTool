package RSModel.command
{
   import com.tencent.morefun.framework.base.Command;
   
   public class FunctionDisabledCommand extends RSModelCommand
   {
       
      public var message:String;
      
      public var closeWindowCommmand:Command;
      
      public function FunctionDisabledCommand(param1:String, param2:Command = null)
      {
         super();
         this.message = param1;
         this.closeWindowCommmand = param2;
      }
   }
}
