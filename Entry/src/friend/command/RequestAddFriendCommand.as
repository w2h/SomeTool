package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import serverProto.inc.ProtoPlayerKey;
   import def.PluginDef;
   
   public class RequestAddFriendCommand extends Command
   {
       
      public var playerKey:ProtoPlayerKey;
      
      public var name:String;
      
      public var addFriendType:int;
      
      public var showFinishTips:Boolean;
      
      public function RequestAddFriendCommand(param1:String, param2:ProtoPlayerKey = null, param3:int = 0, param4:Boolean = true)
      {
         super();
         this.name = param1;
         this.playerKey = param2;
         this.addFriendType = param3;
         this.showFinishTips = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
