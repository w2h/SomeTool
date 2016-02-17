package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import cardPackage.data.ShopItemData;
   import def.PluginDef;
   
   public class BuyShopItemCommand extends Command
   {
       
      public var data:ShopItemData;
      
      public var errorCode:int;
      
      public var ret:int;
      
      public var flag:int = 0;
      
      public function BuyShopItemCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
