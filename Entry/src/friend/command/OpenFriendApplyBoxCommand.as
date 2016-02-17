package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenFriendApplyBoxCommand extends Command
   {
       
      public function OpenFriendApplyBoxCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
