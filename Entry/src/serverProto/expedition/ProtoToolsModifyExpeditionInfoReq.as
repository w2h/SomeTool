package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoToolsModifyExpeditionInfoReq extends Message
   {
      
      public static const CMD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoToolsModifyExpeditionInfoReq.cmd","cmd",1 << 3 | WireType.VARINT);
      
      public static const SERIAL_DESPAIR_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoToolsModifyExpeditionInfoReq.serial_despair_count","serialDespairCount",2 << 3 | WireType.VARINT);
      
      public static const STAGE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoToolsModifyExpeditionInfoReq.stage_level","stageLevel",3 << 3 | WireType.VARINT);
       
      public var cmd:int;
      
      private var serial_despair_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var stage_level$field:int;
      
      public function ProtoToolsModifyExpeditionInfoReq()
      {
         super();
      }
      
      public function clearSerialDespairCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.serial_despair_count$field = new int();
      }
      
      public function get hasSerialDespairCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set serialDespairCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.serial_despair_count$field = param1;
      }
      
      public function get serialDespairCount() : int
      {
         return this.serial_despair_count$field;
      }
      
      public function clearStageLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.stage_level$field = new int();
      }
      
      public function get hasStageLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set stageLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.stage_level$field = param1;
      }
      
      public function get stageLevel() : int
      {
         return this.stage_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.cmd);
         if(this.hasSerialDespairCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.serial_despair_count$field);
         }
         if(this.hasStageLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.stage_level$field);
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
