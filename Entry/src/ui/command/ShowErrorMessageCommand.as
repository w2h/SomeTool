package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowErrorMessageCommand extends Command
   {
       
      public var msg:String;
      
      public function ShowErrorMessageCommand(param1:String)
      {
         super();
         this.msg = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
