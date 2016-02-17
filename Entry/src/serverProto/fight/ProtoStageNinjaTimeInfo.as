package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStageNinjaTimeInfo extends Message
   {
      
      public static const POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoStageNinjaTimeInfo.pos","pos",1 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoStageNinjaTimeInfo.ninja_id","ninjaId",2 << 3 | WireType.VARINT);
      
      public static const FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoStageNinjaTimeInfo.frame_count","frameCount",3 << 3 | WireType.VARINT);
       
      private var pos$field:int;
      
      private var hasField$0:uint = 0;
      
      private var ninja_id$field:int;
      
      private var frame_count$field:int;
      
      public function ProtoStageNinjaTimeInfo()
      {
         super();
      }
      
      public function clearPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.pos$field = new int();
      }
      
      public function get hasPos() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set pos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.pos$field = param1;
      }
      
      public function get pos() : int
      {
         return this.pos$field;
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninja_id$field = new int();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : int
      {
         return this.ninja_id$field;
      }
      
      public function clearFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.frame_count$field = new int();
      }
      
      public function get hasFrameCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set frameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.frame_count$field = param1;
      }
      
      public function get frameCount() : int
      {
         return this.frame_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.pos$field);
         }
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_id$field);
         }
         if(this.hasFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.frame_count$field);
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
