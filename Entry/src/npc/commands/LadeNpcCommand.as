package npc.commands
{
   import com.tencent.morefun.framework.base.Command;
   
   public class LadeNpcCommand extends BaseNpcCommand
   {
       
      public var config:XML;
      
      public function LadeNpcCommand(param1:XML)
      {
         super(Command.FULL_SCREEN | Command.TOTAL_FILE);
         this.config = param1;
      }
   }
}
