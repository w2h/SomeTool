package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.used_by_generated_code;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class ProtoPlayerKey extends Message
   {
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerKey.uin","uin",1 << 3 | WireType.VARINT);
      
      public static const ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerKey.role_id","roleId",2 << 3 | WireType.VARINT);
      
      public static const SVR_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPlayerKey.svr_id","svrId",3 << 3 | WireType.VARINT);
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function ProtoPlayerKey()
      {
         super();
      }
      
      override used_by_generated_code function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.uin);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.roleId);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.svrId);
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override used_by_generated_code function readFromSlice(param1:IDataInput, param2:uint) : void
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
