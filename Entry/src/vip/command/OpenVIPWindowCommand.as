package vip.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenVIPWindowCommand extends Command
   {
       
      public function OpenVIPWindowCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.VIP;
      }
   }
}
