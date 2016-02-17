package serverProto.z2z
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoZ2ZLockZoneRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.z2z.ProtoZ2ZLockZoneRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const KIP:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.z2z.ProtoZ2ZLockZoneRsp.kip","kip",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PORT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.z2z.ProtoZ2ZLockZoneRsp.port","port",3 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.z2z.ProtoZ2ZLockZoneRsp.type","type",4 << 3 | WireType.VARINT,Z2ZLockZoneType);
       
      private var ret$field:ProtoRetInfo;
      
      private var kip$field:String;
      
      private var port$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var type$field:int;
      
      public function ProtoZ2ZLockZoneRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearKip() : void
      {
         this.kip$field = null;
      }
      
      public function get hasKip() : Boolean
      {
         return this.kip$field != null;
      }
      
      public function set kip(param1:String) : void
      {
         this.kip$field = param1;
      }
      
      public function get kip() : String
      {
         return this.kip$field;
      }
      
      public function clearPort() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.port$field = new uint();
      }
      
      public function get hasPort() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set port(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.port$field = param1;
      }
      
      public function get port() : uint
      {
         return this.port$field;
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.type$field = new int();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set type(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.type$field = param1;
      }
      
      public function get type() : int
      {
         return this.type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasKip)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.kip$field);
         }
         if(this.hasPort)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.port$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.type$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
