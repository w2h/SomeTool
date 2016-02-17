package chat.data
{
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoDiamondInfo;
   import utils.PlayerNameUtil;
   import base.ApplicationData;
   import chat.def.ChatChanelDef;
   
   public class ChatItem
   {
       
      public var chatChannelType:uint;
      
      public var chatContextType:uint;
      
      public var chatContext:String;
      
      public var talker_name:String;
      
      public var talker_key:ProtoPlayerKey;
      
      public var talker_vipLevel:int;
      
      public var talker_diamondInfo:ProtoDiamondInfo;
      
      public var listener_name:String;
      
      public var listener_key:ProtoPlayerKey;
      
      public var listener_vipLevel:int;
      
      public var listener_diamondInfo:ProtoDiamondInfo;
      
      public var dataArr:Array;
      
      public var canClickLink:Boolean = true;
      
      public function ChatItem()
      {
         super();
      }
      
      public function parseToHtml() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         _loc2_ = this.getPlayerHtmlString("talker");
         _loc3_ = this.getPlayerHtmlString("listener");
         _loc1_ = "";
         _loc2_ != "null" && (_loc1_ = _loc1_ + _loc2_);
         _loc2_ != "null" && _loc3_ != "null" && (_loc1_ = _loc1_ + ("<font color=\'" + this.getTextColor(this.chatChannelType) + "\'>悄悄地对</font>" + _loc3_));
         if(_loc2_ != "null")
         {
            _loc1_ = _loc1_ + (_loc3_ != "null"?"<font color=\'" + this.getTextColor(this.chatChannelType) + "\'>说:</font>":"<font color=\'" + this.getTextColor(this.chatChannelType) + "\'>:</font>");
            _loc1_ = _loc1_ + "<font size=\'1\'> </font>";
         }
         _loc1_ = _loc1_ + ("<font color=\'" + this.getTextColor(this.chatChannelType) + "\'>" + this.chatContext + "</font>");
         return _loc1_;
      }
      
      private function getPlayerHtmlString(param1:String = "talker") : String
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:ProtoPlayerKey = null;
         var _loc5_:uint = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:ProtoDiamondInfo = null;
         var _loc10_:uint = 0;
         if(param1 == "talker")
         {
            _loc3_ = this.talker_name;
            _loc4_ = this.talker_key;
            _loc8_ = this.talker_vipLevel;
            _loc9_ = this.talker_diamondInfo;
         }
         else if(param1 == "listener")
         {
            _loc3_ = this.listener_name;
            _loc4_ = this.listener_key;
            _loc8_ = this.listener_vipLevel;
            _loc9_ = this.listener_diamondInfo;
         }
         else
         {
            return "null";
         }
         _loc2_ = "";
         this.dataArr = this.dataArr || new Array();
         if(_loc3_ && _loc3_ != "")
         {
            _loc5_ = _loc4_.uin;
            _loc10_ = ChatItemUinRecorder.fromUinToId(_loc5_);
            _loc6_ = _loc4_.roleId;
            _loc7_ = _loc4_.svrId;
            _loc3_ = PlayerNameUtil.standardlizeName(_loc4_,_loc3_);
            if(_loc7_ != ApplicationData.singleton.selfInfo.svrId || _loc5_ != ApplicationData.singleton.selfuin)
            {
               this.dataArr.push(_loc9_);
               if(this.canClickLink)
               {
                  _loc2_ = "<a href=\'event:[vipIcon:" + _loc8_ + "|" + (this.dataArr.length - 1) + "]\'></a>" + "<font color=\'#FFAE00\'>" + "<a href=\'event:player|" + _loc3_ + "|" + _loc10_ + "|" + _loc6_ + "|" + _loc7_ + "|" + _loc8_ + "|" + (this.dataArr.length - 1) + "\'><u>" + _loc3_ + "</u></a></font>";
               }
               else
               {
                  _loc2_ = "<a href=\'event:[vipIcon:" + _loc8_ + "|" + (this.dataArr.length - 1) + "]\'></a>" + "<font color=\'#FFAE00\'>" + _loc3_ + "</font>";
               }
            }
            else
            {
               _loc2_ = "<font color=\'#FFAE00\'>你</font>";
            }
            return _loc2_;
         }
         return "null";
      }
      
      private function getTextColor(param1:int) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
