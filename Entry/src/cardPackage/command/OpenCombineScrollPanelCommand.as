package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenCombineScrollPanelCommand extends Command
   {
       
      public var pieceId:int;
      
      public function OpenCombineScrollPanelCommand(param1:int)
      {
         super();
         this.pieceId = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
   }
}
