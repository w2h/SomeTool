package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestFriendListCommand extends Command
   {
       
      public var friendInfoList:Array;
      
      public var disturbFlag:uint;
      
      public function RequestFriendListCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
