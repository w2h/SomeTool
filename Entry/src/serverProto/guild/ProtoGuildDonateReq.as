package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDonateReq extends Message
   {
      
      public static const COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateReq.coin","coin",1 << 3 | WireType.VARINT);
      
      public static const INGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateReq.ingot","ingot",2 << 3 | WireType.VARINT);
       
      private var coin$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var ingot$field:uint;
      
      public function ProtoGuildDonateReq()
      {
         super();
      }
      
      public function clearCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.coin$field = new uint();
      }
      
      public function get hasCoin() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set coin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.coin$field = param1;
      }
      
      public function get coin() : uint
      {
         return this.coin$field;
      }
      
      public function clearIngot() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ingot$field = new uint();
      }
      
      public function get hasIngot() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ingot(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ingot$field = param1;
      }
      
      public function get ingot() : uint
      {
         return this.ingot$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.coin$field);
         }
         if(this.hasIngot)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.ingot$field);
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
