package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDungeonQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CHAPTER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonQueryRsp.chapter","chapter",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDungeonChapter);
      
      public static const CUR_CHALLANGE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonQueryRsp.cur_challange_count","curChallangeCount",3 << 3 | WireType.VARINT);
      
      public static const MAX_CHALLANGE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonQueryRsp.max_challange_count","maxChallangeCount",4 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      [ArrayElementType("serverProto.guild.ProtoGuildDungeonChapter")]
      public var chapter:Array;
      
      private var cur_challange_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var max_challange_count$field:uint;
      
      public function ProtoGuildDungeonQueryRsp()
      {
         this.chapter = [];
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearCurChallangeCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.cur_challange_count$field = new uint();
      }
      
      public function get hasCurChallangeCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set curChallangeCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.cur_challange_count$field = param1;
      }
      
      public function get curChallangeCount() : uint
      {
         return this.cur_challange_count$field;
      }
      
      public function clearMaxChallangeCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.max_challange_count$field = new uint();
      }
      
      public function get hasMaxChallangeCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set maxChallangeCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.max_challange_count$field = param1;
      }
      
      public function get maxChallangeCount() : uint
      {
         return this.max_challange_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.chapter.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chapter[_loc2_]);
            _loc2_++;
         }
         if(this.hasCurChallangeCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_challange_count$field);
         }
         if(this.hasMaxChallangeCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.max_challange_count$field);
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
