package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoExtraShowInfo extends Message
   {
      
      public static const IS_RED_NAME:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoExtraShowInfo.is_red_name","isRedName",1 << 3 | WireType.VARINT);
      
      public static const RED_NAME_NEED_FIGHT_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoExtraShowInfo.red_name_need_fight_times","redNameNeedFightTimes",2 << 3 | WireType.VARINT);
      
      public static const REMAINDER_RED_NAME_FIGHT_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoExtraShowInfo.remainder_red_name_fight_times","remainderRedNameFightTimes",3 << 3 | WireType.VARINT);
       
      private var is_red_name$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var red_name_need_fight_times$field:int;
      
      private var remainder_red_name_fight_times$field:int;
      
      public function ProtoExtraShowInfo()
      {
         super();
      }
      
      public function clearIsRedName() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_red_name$field = new Boolean();
      }
      
      public function get hasIsRedName() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isRedName(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_red_name$field = param1;
      }
      
      public function get isRedName() : Boolean
      {
         return this.is_red_name$field;
      }
      
      public function clearRedNameNeedFightTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.red_name_need_fight_times$field = new int();
      }
      
      public function get hasRedNameNeedFightTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set redNameNeedFightTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.red_name_need_fight_times$field = param1;
      }
      
      public function get redNameNeedFightTimes() : int
      {
         return this.red_name_need_fight_times$field;
      }
      
      public function clearRemainderRedNameFightTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remainder_red_name_fight_times$field = new int();
      }
      
      public function get hasRemainderRedNameFightTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainderRedNameFightTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remainder_red_name_fight_times$field = param1;
      }
      
      public function get remainderRedNameFightTimes() : int
      {
         return this.remainder_red_name_fight_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIsRedName)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.is_red_name$field);
         }
         if(this.hasRedNameNeedFightTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.red_name_need_fight_times$field);
         }
         if(this.hasRemainderRedNameFightTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_red_name_fight_times$field);
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
