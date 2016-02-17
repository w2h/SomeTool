package serverProto.immolation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class SelfImmolationReq extends Message
   {
      
      public static const CHA_KE_LA_KEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.immolation.SelfImmolationReq.cha_ke_la_key","chaKeLaKey",1 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.immolation.SelfImmolationReq.num","num",2 << 3 | WireType.VARINT);
       
      private var cha_ke_la_key$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var num$field:uint;
      
      public function SelfImmolationReq()
      {
         super();
      }
      
      public function clearChaKeLaKey() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.cha_ke_la_key$field = new uint();
      }
      
      public function get hasChaKeLaKey() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set chaKeLaKey(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.cha_ke_la_key$field = param1;
      }
      
      public function get chaKeLaKey() : uint
      {
         return this.cha_ke_la_key$field;
      }
      
      public function clearNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.num$field = new uint();
      }
      
      public function get hasNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set num(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.num$field = param1;
      }
      
      public function get num() : uint
      {
         return this.num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasChaKeLaKey)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.cha_ke_la_key$field);
         }
         if(this.hasNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.num$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
