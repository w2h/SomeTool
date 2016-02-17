package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildAuditReq extends Message
   {
      
      public static const AGREE_OR_REFUSE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildAuditReq.agree_or_refuse","agreeOrRefuse",1 << 3 | WireType.VARINT);
      
      public static const APPLY_PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildAuditReq.apply_player_list","applyPlayerList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      private var agree_or_refuse$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.inc.ProtoPlayerKey")]
      public var applyPlayerList:Array;
      
      public function ProtoGuildAuditReq()
      {
         this.applyPlayerList = [];
         super();
      }
      
      public function clearAgreeOrRefuse() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.agree_or_refuse$field = new uint();
      }
      
      public function get hasAgreeOrRefuse() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set agreeOrRefuse(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.agree_or_refuse$field = param1;
      }
      
      public function get agreeOrRefuse() : uint
      {
         return this.agree_or_refuse$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasAgreeOrRefuse)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.agree_or_refuse$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.applyPlayerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.applyPlayerList[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
