package serverProto.redPackage
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSendDirectRedPackageReq extends Message
   {
      
      public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.redPackage.ProtoSendDirectRedPackageReq.friend_name","friendName",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const RED_PACKAGE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoSendDirectRedPackageReq.red_package_money","redPackageMoney",2 << 3 | WireType.VARINT);
      
      public static const MAIL_CONTENT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.redPackage.ProtoSendDirectRedPackageReq.mail_content","mailContent",3 << 3 | WireType.LENGTH_DELIMITED);
       
      public var friendName:String;
      
      public var redPackageMoney:int;
      
      public var mailContent:String;
      
      public function ProtoSendDirectRedPackageReq()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_STRING(param1,this.friendName);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.redPackageMoney);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
         WriteUtils.write$TYPE_STRING(param1,this.mailContent);
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
