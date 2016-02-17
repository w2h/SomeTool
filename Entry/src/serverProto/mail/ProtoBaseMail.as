package serverProto.mail
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseMail extends Message
   {
      
      public static const SID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.sid","sid",1 << 3 | WireType.VARINT);
      
      public static const MAIL_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.mail_type","mailType",2 << 3 | WireType.VARINT);
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoBaseMail.player_id","playerId",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoBaseMail.player_nick","playerNick",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const REQUEST_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.request_time","requestTime",5 << 3 | WireType.VARINT);
      
      public static const CONTENT_READ_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.content_read_time","contentReadTime",6 << 3 | WireType.VARINT);
      
      public static const ANNEX_DRAW_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.annex_draw_time","annexDrawTime",7 << 3 | WireType.VARINT);
      
      public static const ANNEX_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.annex_remain_time","annexRemainTime",8 << 3 | WireType.VARINT);
      
      public static const ANNEX_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.annex_num","annexNum",9 << 3 | WireType.VARINT);
      
      public static const TITLE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoBaseMail.title","title",10 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CONTENT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoBaseMail.content","content",11 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ANNEX_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoBaseMail.annex_list","annexList",12 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const IS_REPORTED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoBaseMail.is_reported","isReported",13 << 3 | WireType.VARINT);
       
      public var sid:uint;
      
      public var mailType:uint;
      
      private var player_id$field:ProtoPlayerKey;
      
      public var playerNick:String;
      
      public var requestTime:uint;
      
      public var contentReadTime:uint;
      
      public var annexDrawTime:uint;
      
      public var annexRemainTime:uint;
      
      public var annexNum:uint;
      
      public var title:String;
      
      private var content$field:String;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var annexList:Array;
      
      private var is_reported$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoBaseMail()
      {
         this.annexList = [];
         super();
      }
      
      public function clearPlayerId() : void
      {
         this.player_id$field = null;
      }
      
      public function get hasPlayerId() : Boolean
      {
         return this.player_id$field != null;
      }
      
      public function set playerId(param1:ProtoPlayerKey) : void
      {
         this.player_id$field = param1;
      }
      
      public function get playerId() : ProtoPlayerKey
      {
         return this.player_id$field;
      }
      
      public function clearContent() : void
      {
         this.content$field = null;
      }
      
      public function get hasContent() : Boolean
      {
         return this.content$field != null;
      }
      
      public function set content(param1:String) : void
      {
         this.content$field = param1;
      }
      
      public function get content() : String
      {
         return this.content$field;
      }
      
      public function clearIsReported() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_reported$field = new uint();
      }
      
      public function get hasIsReported() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isReported(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_reported$field = param1;
      }
      
      public function get isReported() : uint
      {
         return this.is_reported$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.sid);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.mailType);
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
         WriteUtils.write$TYPE_STRING(param1,this.playerNick);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_UINT32(param1,this.requestTime);
         WriteUtils.writeTag(param1,WireType.VARINT,6);
         WriteUtils.write$TYPE_UINT32(param1,this.contentReadTime);
         WriteUtils.writeTag(param1,WireType.VARINT,7);
         WriteUtils.write$TYPE_UINT32(param1,this.annexDrawTime);
         WriteUtils.writeTag(param1,WireType.VARINT,8);
         WriteUtils.write$TYPE_UINT32(param1,this.annexRemainTime);
         WriteUtils.writeTag(param1,WireType.VARINT,9);
         WriteUtils.write$TYPE_UINT32(param1,this.annexNum);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
         WriteUtils.write$TYPE_STRING(param1,this.title);
         if(this.hasContent)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_STRING(param1,this.content$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.annexList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.annexList[_loc2_]);
            _loc2_++;
         }
         if(this.hasIsReported)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.is_reported$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 13, Size: 13)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
