package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSpeedUpNotify extends Message
   {
      
      public static const SPEED_RATIO:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoSpeedUpNotify.speed_ratio","speedRatio",1 << 3 | WireType.VARINT);
       
      private var speed_ratio$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSpeedUpNotify()
      {
         super();
      }
      
      public function clearSpeedRatio() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.speed_ratio$field = new int();
      }
      
      public function get hasSpeedRatio() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set speedRatio(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.speed_ratio$field = param1;
      }
      
      public function get speedRatio() : int
      {
         return this.speed_ratio$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSpeedRatio)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.speed_ratio$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
