package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowTextMsgWithImageCommand extends Command
   {
       
      public var image:String;
      
      public var htmlText:String;
      
      public var duration:uint;
      
      public function ShowTextMsgWithImageCommand(param1:String, param2:String, param3:uint = 0)
      {
         super();
         this.htmlText = param1;
         this.image = param2;
         this.duration = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NPC;
      }
   }
}
