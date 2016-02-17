package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChristmasTreeInfo extends Message
   {
      
      public static const CHRISTMAS_ITEM:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTreeInfo.christmas_item","christmasItem",1 << 3 | WireType.VARINT);
      
      public static const CHRISTMAS_POINT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTreeInfo.christmas_point","christmasPoint",2 << 3 | WireType.VARINT);
      
      public static const AWARD_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTreeInfo.award_flag","awardFlag",3 << 3 | WireType.VARINT);
       
      [ArrayElementType("uint")]
      public var christmasItem:Array;
      
      [ArrayElementType("uint")]
      public var christmasPoint:Array;
      
      private var award_flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoChristmasTreeInfo()
      {
         this.christmasItem = [];
         this.christmasPoint = [];
         super();
      }
      
      public function clearAwardFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.award_flag$field = new uint();
      }
      
      public function get hasAwardFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awardFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.award_flag$field = param1;
      }
      
      public function get awardFlag() : uint
      {
         return this.award_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.christmasItem.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.christmasItem[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.christmasPoint.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.christmasPoint[_loc3_]);
            _loc3_++;
         }
         if(this.hasAwardFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.award_flag$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
