package utils
{
   import bag.model.BagModel;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.PluginDef;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import def.ModelDef;
   
   public class PluginUtils
   {
       
      public function PluginUtils()
      {
         super();
         throw new Error(PluginUtils + " can not be instantiated.");
      }
      
      public static function get bagModel() : BagModel
      {
         var _loc1_:Plugin = Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as Plugin;
         if(_loc1_ != null)
         {
            return _loc1_.retrieveModel(ModelDef.BAG) as BagModel;
         }
         return null;
      }
   }
}
