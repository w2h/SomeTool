package crew.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SetCrewBagItemSingleClickEnableCommand extends Command
   {
       
      public var value:Boolean;
      
      public function SetCrewBagItemSingleClickEnableCommand(param1:int)
      {
         super();
         this.value = Boolean(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CREW;
      }
   }
}
