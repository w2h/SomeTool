package serverProto.cardpack
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoToolGetCardInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoToolGetCardInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const GENERAL_EPIC_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.general_epic_quilt_count","generalEpicQuiltCount",2 << 3 | WireType.VARINT);
      
      public static const GENERAL_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.general_quilt_count","generalQuiltCount",3 << 3 | WireType.VARINT);
      
      public static const STRONG_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.strong_quilt_count","strongQuiltCount",4 << 3 | WireType.VARINT);
      
      public static const STRONG_EPIC_QUILT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoToolGetCardInfoRsp.strong_epic_quilt_count","strongEpicQuiltCount",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var general_epic_quilt_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var general_quilt_count$field:int;
      
      private var strong_quilt_count$field:int;
      
      private var strong_epic_quilt_count$field:int;
      
      public function ProtoToolGetCardInfoRsp()
      {
         super();
      }
      
      public function clearGeneralEpicQuiltCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.general_epic_quilt_count$field = new int();
      }
      
      public function get hasGeneralEpicQuiltCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set generalEpicQuiltCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.general_epic_quilt_count$field = param1;
      }
      
      public function get generalEpicQuiltCount() : int
      {
         return this.general_epic_quilt_count$field;
      }
      
      public function clearGeneralQuiltCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.general_quilt_count$field = new int();
      }
      
      public function get hasGeneralQuiltCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set generalQuiltCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.general_quilt_count$field = param1;
      }
      
      public function get generalQuiltCount() : int
      {
         return this.general_quilt_count$field;
      }
      
      public function clearStrongQuiltCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.strong_quilt_count$field = new int();
      }
      
      public function get hasStrongQuiltCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set strongQuiltCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.strong_quilt_count$field = param1;
      }
      
      public function get strongQuiltCount() : int
      {
         return this.strong_quilt_count$field;
      }
      
      public function clearStrongEpicQuiltCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.strong_epic_quilt_count$field = new int();
      }
      
      public function get hasStrongEpicQuiltCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set strongEpicQuiltCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.strong_epic_quilt_count$field = param1;
      }
      
      public function get strongEpicQuiltCount() : int
      {
         return this.strong_epic_quilt_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasGeneralEpicQuiltCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.general_epic_quilt_count$field);
         }
         if(this.hasGeneralQuiltCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.general_quilt_count$field);
         }
         if(this.hasStrongQuiltCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.strong_quilt_count$field);
         }
         if(this.hasStrongEpicQuiltCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.strong_epic_quilt_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
