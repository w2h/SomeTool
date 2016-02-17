package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTransferRolePositionInfo extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransferRolePositionInfo.index","index",1 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransferRolePositionInfo.role_category","roleCategory",2 << 3 | WireType.VARINT);
      
      public static const ROLE_STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransferRolePositionInfo.role_state","roleState",3 << 3 | WireType.VARINT);
      
      public static const UNLOCK_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransferRolePositionInfo.unlock_level","unlockLevel",4 << 3 | WireType.VARINT);
       
      public var index:int;
      
      public var roleCategory:int;
      
      public var roleState:int;
      
      public var unlockLevel:int;
      
      public function ProtoTransferRolePositionInfo()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.index);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.roleCategory);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.roleState);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.unlockLevel);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
