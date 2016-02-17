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
   
   public final class ProtoEffectTimeInfo extends Message
   {
      
      public static const EFFECT_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoEffectTimeInfo.effect_id","effectId",1 << 3 | WireType.VARINT);
      
      public static const EFFECT_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoEffectTimeInfo.effect_pos","effectPos",2 << 3 | WireType.VARINT);
      
      public static const EFFECT_FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoEffectTimeInfo.effect_frame_count","effectFrameCount",3 << 3 | WireType.VARINT);
       
      private var effect_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var effect_pos$field:int;
      
      private var effect_frame_count$field:int;
      
      public function ProtoEffectTimeInfo()
      {
         super();
      }
      
      public function clearEffectId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.effect_id$field = new int();
      }
      
      public function get hasEffectId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set effectId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.effect_id$field = param1;
      }
      
      public function get effectId() : int
      {
         return this.effect_id$field;
      }
      
      public function clearEffectPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.effect_pos$field = new int();
      }
      
      public function get hasEffectPos() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set effectPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.effect_pos$field = param1;
      }
      
      public function get effectPos() : int
      {
         return this.effect_pos$field;
      }
      
      public function clearEffectFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.effect_frame_count$field = new int();
      }
      
      public function get hasEffectFrameCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set effectFrameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.effect_frame_count$field = param1;
      }
      
      public function get effectFrameCount() : int
      {
         return this.effect_frame_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasEffectId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.effect_id$field);
         }
         if(this.hasEffectPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.effect_pos$field);
         }
         if(this.hasEffectFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.effect_frame_count$field);
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
