package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestRecommendFriendListCommand extends Command
   {
       
      public var recommendFriendList:Array;
      
      public function RequestRecommendFriendListCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
