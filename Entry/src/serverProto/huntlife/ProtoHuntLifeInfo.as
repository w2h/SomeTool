package serverProto.huntlife
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
   
   public final class ProtoHuntLifeInfo extends Message
   {
      
      public static const FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoHuntLifeInfo.free_count","freeCount",1 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoHuntLifeInfo.score","score",2 << 3 | WireType.VARINT);
      
      public static const VIP4_FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoHuntLifeInfo.vip4_free_count","vip4FreeCount",3 << 3 | WireType.VARINT);
      
      public static const BLANK_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifeInfo.blank_info","blankInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoChakraBlankInfo);
      
      public static const NPC_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifeInfo.npc_info","npcInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNpcInfo);
       
      public var freeCount:uint;
      
      public var score:uint;
      
      private var vip4_free_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.huntlife.ProtoChakraBlankInfo")]
      public var blankInfo:Array;
      
      [ArrayElementType("serverProto.huntlife.ProtoNpcInfo")]
      public var npcInfo:Array;
      
      public function ProtoHuntLifeInfo()
      {
         this.blankInfo = [];
         this.npcInfo = [];
         super();
      }
      
      public function clearVip4FreeCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.vip4_free_count$field = new uint();
      }
      
      public function get hasVip4FreeCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set vip4FreeCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.vip4_free_count$field = param1;
      }
      
      public function get vip4FreeCount() : uint
      {
         return this.vip4_free_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.freeCount);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.score);
         if(this.hasVip4FreeCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.vip4_free_count$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.blankInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.blankInfo[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.npcInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.npcInfo[_loc3_]);
            _loc3_++;
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
