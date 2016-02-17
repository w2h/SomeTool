package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestFriendApplyListCommand extends Command
   {
       
      public function RequestFriendApplyListCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
