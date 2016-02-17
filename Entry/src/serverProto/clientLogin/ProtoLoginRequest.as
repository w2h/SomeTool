package serverProto.clientLogin
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoTGPInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoLoginRequest extends Message
   {
      
      public static const SOURCE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.source","source",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginRequest.role_id","roleId",2 << 3 | WireType.VARINT);
      
      public static const CHANNEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.clientLogin.ProtoLoginRequest.channel","channel",3 << 3 | WireType.VARINT);
      
      public static const VERSION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.version","version",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const SKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.skey","skey",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PRIVILEGE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.privilege","privilege",6 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TGP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.clientLogin.ProtoLoginRequest.tgp_info","tgpInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoTGPInfo);
      
      public static const XY_CHANNEL:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.clientLogin.ProtoLoginRequest.xy_channel","xyChannel",8 << 3 | WireType.LENGTH_DELIMITED);
       
      public var source:String;
      
      private var role_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var channel$field:uint;
      
      private var version$field:String;
      
      private var skey$field:String;
      
      private var privilege$field:String;
      
      private var tgp_info$field:ProtoTGPInfo;
      
      private var xy_channel$field:String;
      
      public function ProtoLoginRequest()
      {
         super();
      }
      
      public function clearRoleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.role_id$field = new uint();
      }
      
      public function get hasRoleId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set roleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.role_id$field = param1;
      }
      
      public function get roleId() : uint
      {
         return this.role_id$field;
      }
      
      public function clearChannel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.channel$field = new uint();
      }
      
      public function get hasChannel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set channel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.channel$field = param1;
      }
      
      public function get channel() : uint
      {
         return this.channel$field;
      }
      
      public function clearVersion() : void
      {
         this.version$field = null;
      }
      
      public function get hasVersion() : Boolean
      {
         return this.version$field != null;
      }
      
      public function set version(param1:String) : void
      {
         this.version$field = param1;
      }
      
      public function get version() : String
      {
         return this.version$field;
      }
      
      public function clearSkey() : void
      {
         this.skey$field = null;
      }
      
      public function get hasSkey() : Boolean
      {
         return this.skey$field != null;
      }
      
      public function set skey(param1:String) : void
      {
         this.skey$field = param1;
      }
      
      public function get skey() : String
      {
         return this.skey$field;
      }
      
      public function clearPrivilege() : void
      {
         this.privilege$field = null;
      }
      
      public function get hasPrivilege() : Boolean
      {
         return this.privilege$field != null;
      }
      
      public function set privilege(param1:String) : void
      {
         this.privilege$field = param1;
      }
      
      public function get privilege() : String
      {
         return this.privilege$field;
      }
      
      public function clearTgpInfo() : void
      {
         this.tgp_info$field = null;
      }
      
      public function get hasTgpInfo() : Boolean
      {
         return this.tgp_info$field != null;
      }
      
      public function set tgpInfo(param1:ProtoTGPInfo) : void
      {
         this.tgp_info$field = param1;
      }
      
      public function get tgpInfo() : ProtoTGPInfo
      {
         return this.tgp_info$field;
      }
      
      public function clearXyChannel() : void
      {
         this.xy_channel$field = null;
      }
      
      public function get hasXyChannel() : Boolean
      {
         return this.xy_channel$field != null;
      }
      
      public function set xyChannel(param1:String) : void
      {
         this.xy_channel$field = param1;
      }
      
      public function get xyChannel() : String
      {
         return this.xy_channel$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_STRING(param1,this.source);
         if(this.hasRoleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.role_id$field);
         }
         if(this.hasChannel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.channel$field);
         }
         if(this.hasVersion)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.version$field);
         }
         if(this.hasSkey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.skey$field);
         }
         if(this.hasPrivilege)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_STRING(param1,this.privilege$field);
         }
         if(this.hasTgpInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tgp_info$field);
         }
         if(this.hasXyChannel)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_STRING(param1,this.xy_channel$field);
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
