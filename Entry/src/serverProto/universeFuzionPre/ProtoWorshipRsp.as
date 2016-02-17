package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWorshipRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoWorshipRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NEXT_WORSHIP_SEC:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoWorshipRsp.next_worship_sec","nextWorshipSec",2 << 3 | WireType.VARINT);
      
      public static const WORSHIP_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoWorshipRsp.worship_times","worshipTimes",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var next_worship_sec$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var worship_times$field:uint;
      
      public function ProtoWorshipRsp()
      {
         super();
      }
      
      public function clearNextWorshipSec() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.next_worship_sec$field = new uint();
      }
      
      public function get hasNextWorshipSec() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set nextWorshipSec(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.next_worship_sec$field = param1;
      }
      
      public function get nextWorshipSec() : uint
      {
         return this.next_worship_sec$field;
      }
      
      public function clearWorshipTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.worship_times$field = new uint();
      }
      
      public function get hasWorshipTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set worshipTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.worship_times$field = param1;
      }
      
      public function get worshipTimes() : uint
      {
         return this.worship_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNextWorshipSec)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.next_worship_sec$field);
         }
         if(this.hasWorshipTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.worship_times$field);
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
