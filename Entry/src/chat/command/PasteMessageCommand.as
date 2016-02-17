package chat.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class PasteMessageCommand extends Command
   {
       
      public var type:int;
      
      public var content:String;
      
      public var dataArr:Array;
      
      public function PasteMessageCommand(param1:int = 1, param2:String = "", param3:Array = null)
      {
         super();
         this.type = param1;
         this.content = param2;
         this.dataArr = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
