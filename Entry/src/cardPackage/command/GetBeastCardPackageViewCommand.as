package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.display.Sprite;
   import def.PluginDef;
   
   public class GetBeastCardPackageViewCommand extends Command
   {
       
      public var view:Sprite;
      
      public function GetBeastCardPackageViewCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
   }
}
