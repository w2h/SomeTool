package serverProto.innerPartner
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQueryXinyueInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.ret","ret",1 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.vip_level","vipLevel",2 << 3 | WireType.VARINT);
      
      public static const POINT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.point","point",3 << 3 | WireType.VARINT);
      
      public static const FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQueryXinyueInfoRsp.flag","flag",4 << 3 | WireType.VARINT);
       
      private var ret$field:int;
      
      private var hasField$0:uint = 0;
      
      private var vip_level$field:uint;
      
      private var point$field:uint;
      
      private var flag$field:uint;
      
      public function ProtoQueryXinyueInfoRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ret$field = new int();
      }
      
      public function get hasRet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ret(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ret$field = param1;
      }
      
      public function get ret() : int
      {
         return this.ret$field;
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.vip_level$field = new uint();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set vipLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : uint
      {
         return this.vip_level$field;
      }
      
      public function clearPoint() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.point$field = new uint();
      }
      
      public function get hasPoint() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set point(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.point$field = param1;
      }
      
      public function get point() : uint
      {
         return this.point$field;
      }
      
      public function clearFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.flag$field = new uint();
      }
      
      public function get hasFlag() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set flag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.flag$field = param1;
      }
      
      public function get flag() : uint
      {
         return this.flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.ret$field);
         }
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.vip_level$field);
         }
         if(this.hasPoint)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.point$field);
         }
         if(this.hasFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.flag$field);
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
