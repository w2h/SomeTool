package limitGifted.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class LimitGiftedCommand extends Command
   {
       
      public function LimitGiftedCommand(param1:int = 2, param2:Boolean = true)
      {
         super(param1,param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.LIMITGIFTED;
      }
   }
}
