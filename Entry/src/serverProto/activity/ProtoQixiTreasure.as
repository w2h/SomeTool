package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQixiTreasure extends Message
   {
      
      public static const TREASURE_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiTreasure.treasure_award","treasureAward",1 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const TREAURE_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiTreasure.treaure_status","treaureStatus",2 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var treasureAward:Array;
      
      private var treaure_status$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoQixiTreasure()
      {
         this.treasureAward = [];
         super();
      }
      
      public function clearTreaureStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.treaure_status$field = new uint();
      }
      
      public function get hasTreaureStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set treaureStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.treaure_status$field = param1;
      }
      
      public function get treaureStatus() : uint
      {
         return this.treaure_status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.treasureAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.treasureAward[_loc2_]);
            _loc2_++;
         }
         if(this.hasTreaureStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.treaure_status$field);
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
