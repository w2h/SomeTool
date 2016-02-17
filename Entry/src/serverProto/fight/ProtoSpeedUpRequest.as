package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSpeedUpRequest extends Message
   {
      
      public static const OPTION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoSpeedUpRequest.option","option",1 << 3 | WireType.VARINT);
      
      public static const NEED_NOTIFY_MEMBERS:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoSpeedUpRequest.need_notify_members","needNotifyMembers",2 << 3 | WireType.VARINT);
       
      public var option:int;
      
      private var need_notify_members$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSpeedUpRequest()
      {
         super();
      }
      
      public function clearNeedNotifyMembers() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_notify_members$field = new Boolean();
      }
      
      public function get hasNeedNotifyMembers() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needNotifyMembers(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_notify_members$field = param1;
      }
      
      public function get needNotifyMembers() : Boolean
      {
         return this.need_notify_members$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.option);
         if(this.hasNeedNotifyMembers)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.need_notify_members$field);
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
