package crew.utils
{
   import crew.ICrewPlugin;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.PluginDef;
   import crew.model.CrewModel;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import def.ModelDef;
   import bag.model.BagModel;
   import equipment.model.EquipmentModel;
   
   public class CrewUtils
   {
       
      public function CrewUtils()
      {
         super();
         throw new Error(CrewUtils + " can not be instantiated.");
      }
      
      public static function get plugin() : ICrewPlugin
      {
         return Facade.getInstance().retrievePlugin(PluginDef.CREW) as ICrewPlugin;
      }
      
      public static function get model() : CrewModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.CREW) as CrewModel;
      }
      
      public static function get bagModel() : BagModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.BAG) as BagModel;
      }
      
      public static function get equipmentModel() : EquipmentModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.EQUIPMENT) as EquipmentModel;
      }
   }
}
