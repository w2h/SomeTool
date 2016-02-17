package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChristmasActivityWishStat extends Message
   {
      
      public static const ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasActivityWishStat.item","item",1 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const OPEN_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoChristmasActivityWishStat.open_times","openTimes",2 << 3 | WireType.VARINT);
      
      public static const WISH_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoChristmasActivityWishStat.wish_times","wishTimes",3 << 3 | WireType.VARINT);
      
      public static const AWARD_STAT:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.activity.ProtoChristmasActivityWishStat.award_stat","awardStat",4 << 3 | WireType.VARINT);
      
      public static const CARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasActivityWishStat.card","card",5 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var item:Array;
      
      private var open_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var wish_times$field:int;
      
      [ArrayElementType("int")]
      public var awardStat:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var card:Array;
      
      public function ProtoChristmasActivityWishStat()
      {
         this.item = [];
         this.awardStat = [];
         this.card = [];
         super();
      }
      
      public function clearOpenTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.open_times$field = new int();
      }
      
      public function get hasOpenTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set openTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.open_times$field = param1;
      }
      
      public function get openTimes() : int
      {
         return this.open_times$field;
      }
      
      public function clearWishTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.wish_times$field = new int();
      }
      
      public function get hasWishTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set wishTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.wish_times$field = param1;
      }
      
      public function get wishTimes() : int
      {
         return this.wish_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.item.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.item[_loc2_]);
            _loc2_++;
         }
         if(this.hasOpenTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.open_times$field);
         }
         if(this.hasWishTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.wish_times$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.awardStat.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.awardStat[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.card.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.card[_loc4_]);
            _loc4_++;
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
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
