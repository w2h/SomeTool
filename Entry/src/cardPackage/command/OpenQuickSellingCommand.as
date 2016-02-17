package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import bag.data.ItemData;
   import def.PluginDef;
   
   public class OpenQuickSellingCommand extends Command
   {
       
      public var data:ItemData;
      
      public function OpenQuickSellingCommand(param1:ItemData)
      {
         super();
         this.data = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
