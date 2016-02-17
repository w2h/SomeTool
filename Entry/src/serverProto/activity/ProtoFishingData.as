package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFishingData extends Message
   {
      
      public static const FISH_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFishingData.fish_type","fishType",1 << 3 | WireType.VARINT);
      
      public static const FISH_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFishingData.fish_num","fishNum",2 << 3 | WireType.VARINT);
       
      private var fish_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var fish_num$field:uint;
      
      public function ProtoFishingData()
      {
         super();
      }
      
      public function clearFishType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.fish_type$field = new uint();
      }
      
      public function get hasFishType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fishType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.fish_type$field = param1;
      }
      
      public function get fishType() : uint
      {
         return this.fish_type$field;
      }
      
      public function clearFishNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.fish_num$field = new uint();
      }
      
      public function get hasFishNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set fishNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.fish_num$field = param1;
      }
      
      public function get fishNum() : uint
      {
         return this.fish_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFishType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.fish_type$field);
         }
         if(this.hasFishNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.fish_num$field);
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
