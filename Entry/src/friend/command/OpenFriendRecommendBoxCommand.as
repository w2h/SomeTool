package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenFriendRecommendBoxCommand extends Command
   {
       
      public var recommendFriendInfoArr:Array;
      
      public var useListBox:Boolean;
      
      public var isGuildMember:Boolean;
      
      public function OpenFriendRecommendBoxCommand(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.recommendFriendInfoArr = param1;
         this.useListBox = param2;
         this.isGuildMember = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
