package serverProto.innerPay
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class InnerItcPayReq extends Message
   {
      
      public static const IP_FORWARD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.ip_forward","ipForward",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const AREA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcPayReq.area","area",2 << 3 | WireType.VARINT);
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcPayReq.uin","uin",3 << 3 | WireType.VARINT);
      
      public static const AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcPayReq.amount","amount",4 << 3 | WireType.VARINT);
      
      public static const BILLNO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.billno","billno",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const SOURCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcPayReq.source","source",6 << 3 | WireType.VARINT);
      
      public static const REMARK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.remark","remark",7 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TRANINFO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerPay.InnerItcPayReq.traninfo","traninfo",8 << 3 | WireType.LENGTH_DELIMITED);
       
      private var ip_forward$field:String;
      
      public var area:int;
      
      public var uin:uint;
      
      public var amount:uint;
      
      public var billno:String;
      
      private var source$field:int;
      
      private var hasField$0:uint = 0;
      
      private var remark$field:String;
      
      private var traninfo$field:String;
      
      public function InnerItcPayReq()
      {
         super();
      }
      
      public function clearIpForward() : void
      {
         this.ip_forward$field = null;
      }
      
      public function get hasIpForward() : Boolean
      {
         return this.ip_forward$field != null;
      }
      
      public function set ipForward(param1:String) : void
      {
         this.ip_forward$field = param1;
      }
      
      public function get ipForward() : String
      {
         return this.ip_forward$field;
      }
      
      public function clearSource() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.source$field = new int();
      }
      
      public function get hasSource() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set source(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.source$field = param1;
      }
      
      public function get source() : int
      {
         return this.source$field;
      }
      
      public function clearRemark() : void
      {
         this.remark$field = null;
      }
      
      public function get hasRemark() : Boolean
      {
         return this.remark$field != null;
      }
      
      public function set remark(param1:String) : void
      {
         this.remark$field = param1;
      }
      
      public function get remark() : String
      {
         return this.remark$field;
      }
      
      public function clearTraninfo() : void
      {
         this.traninfo$field = null;
      }
      
      public function get hasTraninfo() : Boolean
      {
         return this.traninfo$field != null;
      }
      
      public function set traninfo(param1:String) : void
      {
         this.traninfo$field = param1;
      }
      
      public function get traninfo() : String
      {
         return this.traninfo$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIpForward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.ip_forward$field);
         }
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.area);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.uin);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.amount);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
         WriteUtils.write$TYPE_STRING(param1,this.billno);
         if(this.hasSource)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.source$field);
         }
         if(this.hasRemark)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_STRING(param1,this.remark$field);
         }
         if(this.hasTraninfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_STRING(param1,this.traninfo$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
