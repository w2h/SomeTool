package equipment.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseEquipmentCommand extends Command
   {
       
      public function BaseEquipmentCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.EQUIPMENT;
      }
   }
}
