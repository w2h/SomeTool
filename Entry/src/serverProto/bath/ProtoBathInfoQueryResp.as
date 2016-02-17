package serverProto.bath
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBathInfoQueryResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bath.ProtoBathInfoQueryResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REST_SEC:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBathInfoQueryResp.rest_sec","restSec",2 << 3 | WireType.VARINT);
      
      public static const STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBathInfoQueryResp.strength","strength",3 << 3 | WireType.VARINT);
      
      public static const REST_HELP_BATH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBathInfoQueryResp.rest_help_bath_times","restHelpBathTimes",4 << 3 | WireType.VARINT);
      
      public static const REST_BUY_BATH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBathInfoQueryResp.rest_buy_bath_times","restBuyBathTimes",5 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBathInfoQueryResp.role_category","roleCategory",6 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var rest_sec$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var strength$field:uint;
      
      private var rest_help_bath_times$field:uint;
      
      private var rest_buy_bath_times$field:uint;
      
      private var role_category$field:uint;
      
      public function ProtoBathInfoQueryResp()
      {
         super();
      }
      
      public function clearRestSec() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rest_sec$field = new uint();
      }
      
      public function get hasRestSec() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set restSec(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rest_sec$field = param1;
      }
      
      public function get restSec() : uint
      {
         return this.rest_sec$field;
      }
      
      public function clearStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.strength$field = new uint();
      }
      
      public function get hasStrength() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set strength(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.strength$field = param1;
      }
      
      public function get strength() : uint
      {
         return this.strength$field;
      }
      
      public function clearRestHelpBathTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.rest_help_bath_times$field = new uint();
      }
      
      public function get hasRestHelpBathTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set restHelpBathTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.rest_help_bath_times$field = param1;
      }
      
      public function get restHelpBathTimes() : uint
      {
         return this.rest_help_bath_times$field;
      }
      
      public function clearRestBuyBathTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.rest_buy_bath_times$field = new uint();
      }
      
      public function get hasRestBuyBathTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set restBuyBathTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.rest_buy_bath_times$field = param1;
      }
      
      public function get restBuyBathTimes() : uint
      {
         return this.rest_buy_bath_times$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.role_category$field = new uint();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set roleCategory(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : uint
      {
         return this.role_category$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRestSec)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_sec$field);
         }
         if(this.hasStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.strength$field);
         }
         if(this.hasRestHelpBathTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_help_bath_times$field);
         }
         if(this.hasRestBuyBathTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_buy_bath_times$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.role_category$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
