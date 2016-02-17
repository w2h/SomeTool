package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestVisibleUser extends Command
   {
       
      public function RequestVisibleUser()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
