package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildUpgradeRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildUpgradeRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const UPGRADE_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.upgrade_type","upgradeType",2 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.level","level",3 << 3 | WireType.VARINT);
      
      public static const LIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.limit","limit",4 << 3 | WireType.VARINT);
      
      public static const COST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildUpgradeRsp.cost","cost",5 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var upgrade_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var level$field:uint;
      
      private var limit$field:uint;
      
      private var cost$field:uint;
      
      public function ProtoGuildUpgradeRsp()
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
      
      public function clearUpgradeType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.upgrade_type$field = new uint();
      }
      
      public function get hasUpgradeType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set upgradeType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.upgrade_type$field = param1;
      }
      
      public function get upgradeType() : uint
      {
         return this.upgrade_type$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearLimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.limit$field = new uint();
      }
      
      public function get hasLimit() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set limit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.limit$field = param1;
      }
      
      public function get limit() : uint
      {
         return this.limit$field;
      }
      
      public function clearCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.cost$field = new uint();
      }
      
      public function get hasCost() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set cost(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.cost$field = param1;
      }
      
      public function get cost() : uint
      {
         return this.cost$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasUpgradeType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.upgrade_type$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasLimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.limit$field);
         }
         if(this.hasCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.cost$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
