package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleRoyaleSignUpResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleSignUpResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AUTO_POLL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoBattleRoyaleSignUpResp.auto_poll","autoPoll",2 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var auto_poll$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoBattleRoyaleSignUpResp()
      {
         super();
      }
      
      public function clearAutoPoll() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.auto_poll$field = new Boolean();
      }
      
      public function get hasAutoPoll() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set autoPoll(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.auto_poll$field = param1;
      }
      
      public function get autoPoll() : Boolean
      {
         return this.auto_poll$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasAutoPoll)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_poll$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
