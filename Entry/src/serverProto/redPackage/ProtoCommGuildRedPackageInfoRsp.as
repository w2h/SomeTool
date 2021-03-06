package serverProto.redPackage
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
   
   public final class ProtoCommGuildRedPackageInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.redPackage.ProtoCommGuildRedPackageInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const RED_PACKAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.redPackage.ProtoCommGuildRedPackageInfoRsp.red_package","redPackage",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildRedPackageInfo);
      
      public static const MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoCommGuildRedPackageInfoRsp.money","money",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var red_package$field:serverProto.redPackage.ProtoGuildRedPackageInfo;
      
      private var money$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoCommGuildRedPackageInfoRsp()
      {
         super();
      }
      
      public function clearRedPackage() : void
      {
         this.red_package$field = null;
      }
      
      public function get hasRedPackage() : Boolean
      {
         return this.red_package$field != null;
      }
      
      public function set redPackage(param1:serverProto.redPackage.ProtoGuildRedPackageInfo) : void
      {
         this.red_package$field = param1;
      }
      
      public function get redPackage() : serverProto.redPackage.ProtoGuildRedPackageInfo
      {
         return this.red_package$field;
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.money$field = new int();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set money(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.money$field = param1;
      }
      
      public function get money() : int
      {
         return this.money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRedPackage)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.red_package$field);
         }
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.money$field);
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
