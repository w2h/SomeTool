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
   
   public final class ProtoQQ3366Level extends Message
   {
      
      public static const BEGIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQQ3366Level.begin_level","beginLevel",1 << 3 | WireType.VARINT);
      
      public static const END_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQQ3366Level.end_level","endLevel",2 << 3 | WireType.VARINT);
       
      private var begin_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_level$field:uint;
      
      public function ProtoQQ3366Level()
      {
         super();
      }
      
      public function clearBeginLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.begin_level$field = new uint();
      }
      
      public function get hasBeginLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beginLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.begin_level$field = param1;
      }
      
      public function get beginLevel() : uint
      {
         return this.begin_level$field;
      }
      
      public function clearEndLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_level$field = new uint();
      }
      
      public function get hasEndLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_level$field = param1;
      }
      
      public function get endLevel() : uint
      {
         return this.end_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBeginLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_level$field);
         }
         if(this.hasEndLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.end_level$field);
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
