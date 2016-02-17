package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniverseRankBattleNewHighestRankNotify extends Message
   {
      
      public static const OLD_RANK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleNewHighestRankNotify.old_rank","oldRank",1 << 3 | WireType.VARINT);
      
      public static const NEW_RANK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleNewHighestRankNotify.new_rank","newRank",2 << 3 | WireType.VARINT);
      
      public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleNewHighestRankNotify.copper","copper",3 << 3 | WireType.VARINT);
      
      public static const COUPON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionPre.ProtoUniverseRankBattleNewHighestRankNotify.coupon","coupon",4 << 3 | WireType.VARINT);
       
      public var oldRank:int;
      
      public var newRank:int;
      
      private var copper$field:int;
      
      private var hasField$0:uint = 0;
      
      private var coupon$field:int;
      
      public function ProtoUniverseRankBattleNewHighestRankNotify()
      {
         super();
      }
      
      public function clearCopper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.copper$field = new int();
      }
      
      public function get hasCopper() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set copper(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.copper$field = param1;
      }
      
      public function get copper() : int
      {
         return this.copper$field;
      }
      
      public function clearCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.coupon$field = new int();
      }
      
      public function get hasCoupon() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set coupon(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.coupon$field = param1;
      }
      
      public function get coupon() : int
      {
         return this.coupon$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.oldRank);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.newRank);
         if(this.hasCopper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.copper$field);
         }
         if(this.hasCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.coupon$field);
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
