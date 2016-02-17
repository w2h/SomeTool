package mail.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class UpdateNewMailNumCommand extends Command
   {
       
      public var newMailNum:int;
      
      public function UpdateNewMailNumCommand(param1:int)
      {
         super();
         this.newMailNum = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.HUD;
      }
   }
}
