package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPracticeNinjaRequest extends Message
   {
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeNinjaRequest.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const TIME_TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeNinjaRequest.time_type","timeType",2 << 3 | WireType.VARINT);
      
      public static const PAY_TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticeNinjaRequest.pay_type","payType",3 << 3 | WireType.VARINT);
      
      public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticeNinjaRequest.friend","friend",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      public var ninjaSeq:int;
      
      private var time_type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var pay_type$field:int;
      
      private var friend$field:ProtoPlayerKey;
      
      public function ProtoPracticeNinjaRequest()
      {
         super();
      }
      
      public function clearTimeType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.time_type$field = new int();
      }
      
      public function get hasTimeType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set timeType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.time_type$field = param1;
      }
      
      public function get timeType() : int
      {
         return this.time_type$field;
      }
      
      public function clearPayType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.pay_type$field = new int();
      }
      
      public function get hasPayType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set payType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.pay_type$field = param1;
      }
      
      public function get payType() : int
      {
         return this.pay_type$field;
      }
      
      public function clearFriend() : void
      {
         this.friend$field = null;
      }
      
      public function get hasFriend() : Boolean
      {
         return this.friend$field != null;
      }
      
      public function set friend(param1:ProtoPlayerKey) : void
      {
         this.friend$field = param1;
      }
      
      public function get friend() : ProtoPlayerKey
      {
         return this.friend$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.ninjaSeq);
         if(this.hasTimeType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.time_type$field);
         }
         if(this.hasPayType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.pay_type$field);
         }
         if(this.hasFriend)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
