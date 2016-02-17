package chat.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class PasteAlertAreaMessageCommand extends Command
   {
       
      public var isUpperPosition:Boolean;
      
      public var msg:String;
      
      public function PasteAlertAreaMessageCommand(param1:Boolean, param2:String)
      {
         super();
         this.isUpperPosition = param1;
         this.msg = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
