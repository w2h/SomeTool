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
   
   public final class ProtoFukubukuroTaskInfo extends Message
   {
      
      public static const COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFukubukuroTaskInfo.count","count",1 << 3 | WireType.VARINT);
      
      public static const MAX_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFukubukuroTaskInfo.max_count","maxCount",2 << 3 | WireType.VARINT);
      
      public static const ACTIVE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoFukubukuroTaskInfo.active","active",3 << 3 | WireType.VARINT);
       
      private var count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var max_count$field:uint;
      
      private var active$field:uint;
      
      public function ProtoFukubukuroTaskInfo()
      {
         super();
      }
      
      public function clearCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.count$field = new uint();
      }
      
      public function get hasCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set count(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.count$field = param1;
      }
      
      public function get count() : uint
      {
         return this.count$field;
      }
      
      public function clearMaxCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.max_count$field = new uint();
      }
      
      public function get hasMaxCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set maxCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.max_count$field = param1;
      }
      
      public function get maxCount() : uint
      {
         return this.max_count$field;
      }
      
      public function clearActive() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.active$field = new uint();
      }
      
      public function get hasActive() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set active(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.active$field = param1;
      }
      
      public function get active() : uint
      {
         return this.active$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.count$field);
         }
         if(this.hasMaxCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.max_count$field);
         }
         if(this.hasActive)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.active$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
