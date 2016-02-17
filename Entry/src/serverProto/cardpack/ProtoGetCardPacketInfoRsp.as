package serverProto.cardpack
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.supershadow.ProtoSuperShadowInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetCardPacketInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CARD_PACKET:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.card_packet","cardPacket",2 << 3 | WireType.LENGTH_DELIMITED,ProtoCardPacketInfo);
      
      public static const PAY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.pay_info","payInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoCardPackPayInfo);
      
      public static const SUPER_SHADOW_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoGetCardPacketInfoRsp.super_shadow_info","superShadowInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoSuperShadowInfo);
      
      public static const QUILT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoGetCardPacketInfoRsp.quilt_count","quiltCount",5 << 3 | WireType.VARINT);
      
      public static const PRE_OPEN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoGetCardPacketInfoRsp.pre_open_count","preOpenCount",6 << 3 | WireType.VARINT);
      
      public static const OPEN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoGetCardPacketInfoRsp.open_count","openCount",7 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.cardpack.ProtoCardPacketInfo")]
      public var cardPacket:Array;
      
      private var pay_info$field:serverProto.cardpack.ProtoCardPackPayInfo;
      
      private var super_shadow_info$field:ProtoSuperShadowInfo;
      
      private var quilt_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var pre_open_count$field:uint;
      
      private var open_count$field:uint;
      
      public function ProtoGetCardPacketInfoRsp()
      {
         this.cardPacket = [];
         super();
      }
      
      public function clearPayInfo() : void
      {
         this.pay_info$field = null;
      }
      
      public function get hasPayInfo() : Boolean
      {
         return this.pay_info$field != null;
      }
      
      public function set payInfo(param1:serverProto.cardpack.ProtoCardPackPayInfo) : void
      {
         this.pay_info$field = param1;
      }
      
      public function get payInfo() : serverProto.cardpack.ProtoCardPackPayInfo
      {
         return this.pay_info$field;
      }
      
      public function clearSuperShadowInfo() : void
      {
         this.super_shadow_info$field = null;
      }
      
      public function get hasSuperShadowInfo() : Boolean
      {
         return this.super_shadow_info$field != null;
      }
      
      public function set superShadowInfo(param1:ProtoSuperShadowInfo) : void
      {
         this.super_shadow_info$field = param1;
      }
      
      public function get superShadowInfo() : ProtoSuperShadowInfo
      {
         return this.super_shadow_info$field;
      }
      
      public function clearQuiltCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.quilt_count$field = new uint();
      }
      
      public function get hasQuiltCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set quiltCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.quilt_count$field = param1;
      }
      
      public function get quiltCount() : uint
      {
         return this.quilt_count$field;
      }
      
      public function clearPreOpenCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.pre_open_count$field = new uint();
      }
      
      public function get hasPreOpenCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set preOpenCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.pre_open_count$field = param1;
      }
      
      public function get preOpenCount() : uint
      {
         return this.pre_open_count$field;
      }
      
      public function clearOpenCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.open_count$field = new uint();
      }
      
      public function get hasOpenCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set openCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.open_count$field = param1;
      }
      
      public function get openCount() : uint
      {
         return this.open_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.cardPacket.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.cardPacket[_loc2_]);
            _loc2_++;
         }
         if(this.hasPayInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.pay_info$field);
         }
         if(this.hasSuperShadowInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.super_shadow_info$field);
         }
         if(this.hasQuiltCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.quilt_count$field);
         }
         if(this.hasPreOpenCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.pre_open_count$field);
         }
         if(this.hasOpenCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.open_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
