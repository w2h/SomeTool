package com.tencent.morefun.naruto.plugin.exui.tooltip.data
{
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.UInt64;
   
   public class CommonUserPopupMenuData
   {
      
      public static const VIEW_PLAYER:String = "VIEW_PLAYER";
      
      public static const ADD_FRIEND:String = "ADD_FRIEND";
      
      public static const JOIN_GUILD:String = "JOIN_GUILD";
       
      public var key:ProtoPlayerKey;
      
      public var guildId:UInt64;
      
      public var menus:Array;
      
      public function CommonUserPopupMenuData()
      {
         super();
      }
   }
}
