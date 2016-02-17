package server
{
   import com.tencent.morefun.naruto.base.interfaces.ISocketProtocol;
   import com.netease.protobuf.Message;
   import flash.utils.ByteArray;
   import com.tencent.morefun.framework.log.logger;
   import flash.utils.Endian;
   import base.ApplicationData;
   
   public class SocketProtocol implements ISocketProtocol
   {
      
      public static const RETURN_CODE_OK:int = 0;
       
      private var m_index:uint;
      
      private var m_error:int;
      
      private var m_errorStr:String;
      
      private var m_commandId:uint;
      
      private var m_type:uint;
      
      private var m_clientMessage:Message;
      
      private var m_serverMessage:Message;
      
      private var m_clientData:Object;
      
      private var m_bytes:ByteArray;
      
      private var m_messageBytes:ByteArray;
      
      public function SocketProtocol()
      {
         this.m_messageBytes = new ByteArray();
         super();
         this.m_bytes = new ByteArray();
      }
      
      public function get commandId() : uint
      {
         return this.m_commandId;
      }
      
      public function set commandId(param1:uint) : void
      {
         this.m_commandId = param1;
      }
      
      public function set index(param1:uint) : void
      {
         this.m_index = param1;
      }
      
      public function get index() : uint
      {
         return this.m_index;
      }
      
      public function set type(param1:uint) : void
      {
         this.m_type = param1;
      }
      
      public function get type() : uint
      {
         return this.m_type;
      }
      
      public function get success() : Boolean
      {
         return this.m_error == RETURN_CODE_OK;
      }
      
      public function set error(param1:int) : void
      {
         this.m_error = param1;
      }
      
      public function get error() : int
      {
         return this.m_error;
      }
      
      public function set errorStr(param1:String) : void
      {
         this.m_errorStr = param1;
      }
      
      public function get errorStr() : String
      {
         return this.m_errorStr;
      }
      
      public function set clientMessage(param1:Message) : void
      {
         this.m_clientMessage = param1;
      }
      
      public function get clientMessage() : Message
      {
         return this.m_clientMessage;
      }
      
      public function set serverMessage(param1:Message) : void
      {
         this.m_serverMessage = param1;
      }
      
      public function get serverMessage() : Message
      {
         return this.m_serverMessage;
      }
      
      public function set clientData(param1:Object) : void
      {
         this.m_clientData = param1;
      }
      
      public function get clientData() : Object
      {
         return this.m_clientData;
      }
      
      public function encodeByMessage() : void
      {
         if(this.m_clientMessage != null)
         {
            this.m_clientMessage.writeTo(this.bytes);
            logger.output("[Message]",">>>>");
            logger.outputMessage(this.m_clientMessage);
         }
      }
      
      public function decodeByMessage(param1:ByteArray) : void
      {
         var _loc2_:Object = null;
         this.m_messageBytes.writeBytes(param1,0,param1.bytesAvailable);
         this.m_messageBytes.position = 0;
         if(this.m_serverMessage != null)
         {
            this.m_serverMessage.mergeFrom(param1);
            if(this.m_serverMessage.hasOwnProperty("ret") || this.m_serverMessage.hasOwnProperty("retInfo"))
            {
               if(this.m_serverMessage.hasOwnProperty("ret"))
               {
                  _loc2_ = this.m_serverMessage["ret"];
               }
               else
               {
                  _loc2_ = this.m_serverMessage["retInfo"];
               }
               this.m_error = _loc2_.code;
               this.m_errorStr = _loc2_.msg;
               if(this.m_error != 0)
               {
                  this.m_errorStr = this.m_errorStr || "系统错误";
               }
            }
            if(this.m_error == 0)
            {
               logger.output("[Message]","<<<<");
               logger.outputMessage(this.m_serverMessage);
            }
            else
            {
               logger.output("[Message]","<<<<");
               logger.outputMessage(this.m_serverMessage);
               logger.output("error_code",this.m_error,"error_msg",this.m_errorStr);
            }
         }
      }
      
      public function encodeByBytes() : void
      {
      }
      
      public function decodeByBytes(param1:ByteArray) : void
      {
      }
      
      public function get bytesLength() : Number
      {
         return this.m_bytes.length;
      }
      
      public function get bytes() : ByteArray
      {
         return this.m_bytes;
      }
      
      public function set bytes(param1:ByteArray) : void
      {
         this.m_bytes = param1;
      }
      
      public function get messageBytes() : ByteArray
      {
         return this.m_messageBytes;
      }
      
      public function get data() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.endian = Endian.BIG_ENDIAN;
         _loc1_.position = 0;
         _loc1_.writeShort(2305);
         _loc1_.writeShort(this.bytesLength);
         _loc1_.writeUnsignedInt(this.commandId);
         _loc1_.writeUnsignedInt(this.index);
         _loc1_.writeUnsignedInt(1);
         _loc1_.writeDouble(0);
         _loc1_.writeUnsignedInt(ApplicationData.singleton.selfuin);
         _loc1_.writeShort(ApplicationData.singleton.selfRole);
         _loc1_.writeShort(ApplicationData.singleton.ser_id);
         _loc1_.writeUnsignedInt(0);
         _loc1_.writeBytes(this.m_bytes);
         logger.output("[Package]",">>>>","magic",2305,"len",this.bytesLength,"cmd_id",this.commandId,"msg_id",this.index,"msg_type",1,"timeout",0,"uin",ApplicationData.singleton.selfuin,"role_id",ApplicationData.singleton.selfRole,"svr_id",ApplicationData.singleton.ser_id,"client_ip",0);
         return _loc1_;
      }
   }
}
