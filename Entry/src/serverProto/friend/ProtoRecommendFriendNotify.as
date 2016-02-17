package serverProto.friend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRecommendFriendNotify extends Message
   {
      
      public static const REASON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoRecommendFriendNotify.reason","reason",1 << 3 | WireType.VARINT);
      
      public static const RECOMMAND_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoRecommendFriendNotify.recommand_list","recommandList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFriendRecommendInfo);
       
      private var reason$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.friend.ProtoFriendRecommendInfo")]
      public var recommandList:Array;
      
      public function ProtoRecommendFriendNotify()
      {
         this.recommandList = [];
         super();
      }
      
      public function clearReason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.reason$field = new uint();
      }
      
      public function get hasReason() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set reason(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.reason$field = param1;
      }
      
      public function get reason() : uint
      {
         return this.reason$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasReason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.reason$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.recommandList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.recommandList[_loc2_]);
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
