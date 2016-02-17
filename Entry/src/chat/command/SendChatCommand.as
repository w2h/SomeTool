package chat.command
{
   import base.NarutoCommand;
   import serverProto.inc.ProtoPlayerKey;
   import def.PluginDef;
   
   public class SendChatCommand extends NarutoCommand
   {
      
      public static const SEND_FAILD_ERROR:uint = 4097;
       
      public var channelType:uint;
      
      public var contextType:uint;
      
      public var context:String;
      
      public var listenername:String;
      
      public var playerKey:ProtoPlayerKey;
      
      public var socketType:int;
      
      public function SendChatCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CHAT;
      }
   }
}
