package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKuafuTuanfanli extends Message
   {
      
      public static const TUAN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanfanli.tuan_num","tuanNum",1 << 3 | WireType.VARINT);
      
      public static const FANLI:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoKuafuTuanfanli.fanli","fanli",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const FANLI_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanfanli.fanli_seq","fanliSeq",3 << 3 | WireType.VARINT);
      
      public static const FANLI_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanfanli.fanli_status","fanliStatus",4 << 3 | WireType.VARINT);
       
      private var tuan_num$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var fanli:Array;
      
      private var fanli_seq$field:uint;
      
      private var fanli_status$field:uint;
      
      public function ProtoKuafuTuanfanli()
      {
         this.fanli = [];
         super();
      }
      
      public function clearTuanNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.tuan_num$field = new uint();
      }
      
      public function get hasTuanNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set tuanNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.tuan_num$field = param1;
      }
      
      public function get tuanNum() : uint
      {
         return this.tuan_num$field;
      }
      
      public function clearFanliSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.fanli_seq$field = new uint();
      }
      
      public function get hasFanliSeq() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set fanliSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.fanli_seq$field = param1;
      }
      
      public function get fanliSeq() : uint
      {
         return this.fanli_seq$field;
      }
      
      public function clearFanliStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.fanli_status$field = new uint();
      }
      
      public function get hasFanliStatus() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set fanliStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.fanli_status$field = param1;
      }
      
      public function get fanliStatus() : uint
      {
         return this.fanli_status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasTuanNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.tuan_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.fanli.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fanli[_loc2_]);
            _loc2_++;
         }
         if(this.hasFanliSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.fanli_seq$field);
         }
         if(this.hasFanliStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.fanli_status$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
