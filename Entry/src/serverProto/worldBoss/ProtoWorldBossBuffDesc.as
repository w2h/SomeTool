package serverProto.worldBoss
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWorldBossBuffDesc extends Message
   {
      
      public static const RATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.rate","rate",1 << 3 | WireType.VARINT);
      
      public static const ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.ulimit","ulimit",2 << 3 | WireType.VARINT);
      
      public static const COPPER_PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.copper_price","copperPrice",3 << 3 | WireType.VARINT);
      
      public static const COUPON_PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossBuffDesc.coupon_price","couponPrice",4 << 3 | WireType.VARINT);
       
      private var rate$field:int;
      
      private var hasField$0:uint = 0;
      
      private var ulimit$field:int;
      
      private var copper_price$field:int;
      
      private var coupon_price$field:int;
      
      public function ProtoWorldBossBuffDesc()
      {
         super();
      }
      
      public function clearRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rate$field = new int();
      }
      
      public function get hasRate() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rate$field = param1;
      }
      
      public function get rate() : int
      {
         return this.rate$field;
      }
      
      public function clearUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ulimit$field = new int();
      }
      
      public function get hasUlimit() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ulimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ulimit$field = param1;
      }
      
      public function get ulimit() : int
      {
         return this.ulimit$field;
      }
      
      public function clearCopperPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.copper_price$field = new int();
      }
      
      public function get hasCopperPrice() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set copperPrice(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.copper_price$field = param1;
      }
      
      public function get copperPrice() : int
      {
         return this.copper_price$field;
      }
      
      public function clearCouponPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.coupon_price$field = new int();
      }
      
      public function get hasCouponPrice() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set couponPrice(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.coupon_price$field = param1;
      }
      
      public function get couponPrice() : int
      {
         return this.coupon_price$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.rate$field);
         }
         if(this.hasUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.ulimit$field);
         }
         if(this.hasCopperPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.copper_price$field);
         }
         if(this.hasCouponPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.coupon_price$field);
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
