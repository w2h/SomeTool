package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import cardPackage.data.ShopItemData;
   import def.PluginDef;
   
   public class ShopRefreshItemsDataCommand extends Command
   {
       
      public var itemId:int = 0;
      
      public var itemData:ShopItemData = null;
      
      public function ShopRefreshItemsDataCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
   }
}
