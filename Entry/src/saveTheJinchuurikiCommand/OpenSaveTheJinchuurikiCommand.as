package saveTheJinchuurikiCommand
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenSaveTheJinchuurikiCommand extends Command
   {
       
      public function OpenSaveTheJinchuurikiCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.ACTIVITY;
      }
   }
}
