package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildBeastQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastQueryRsp.type","type",2 << 3 | WireType.VARINT);
      
      public static const GUILD_FUNDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastQueryRsp.guild_funds","guildFunds",3 << 3 | WireType.VARINT);
      
      public static const CHAKRA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastQueryRsp.chakra","chakra",4 << 3 | WireType.VARINT);
      
      public static const MAX_CHONGPEI_CHAKRA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastQueryRsp.max_chongpei_chakra","maxChongpeiChakra",5 << 3 | WireType.VARINT);
      
      public static const BEAST_CHIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastQueryRsp.beast_chips","beastChips",6 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildBeastChipInfo);
      
      public static const GUILD_BEASTS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastQueryRsp.guild_beasts","guildBeasts",7 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildBeastInfo);
      
      public static const FIRST_OPEN_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildBeastQueryRsp.first_open_flag","firstOpenFlag",8 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_funds$field:uint;
      
      private var chakra$field:uint;
      
      private var max_chongpei_chakra$field:uint;
      
      [ArrayElementType("serverProto.guild.ProtoGuildBeastChipInfo")]
      public var beastChips:Array;
      
      [ArrayElementType("serverProto.guild.ProtoGuildBeastInfo")]
      public var guildBeasts:Array;
      
      private var first_open_flag$field:Boolean;
      
      public function ProtoGuildBeastQueryRsp()
      {
         this.beastChips = [];
         this.guildBeasts = [];
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
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.type$field = new uint();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set type(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.type$field = param1;
      }
      
      public function get type() : uint
      {
         return this.type$field;
      }
      
      public function clearGuildFunds() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_funds$field = new uint();
      }
      
      public function get hasGuildFunds() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildFunds(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_funds$field = param1;
      }
      
      public function get guildFunds() : uint
      {
         return this.guild_funds$field;
      }
      
      public function clearChakra() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.chakra$field = new uint();
      }
      
      public function get hasChakra() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set chakra(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.chakra$field = param1;
      }
      
      public function get chakra() : uint
      {
         return this.chakra$field;
      }
      
      public function clearMaxChongpeiChakra() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_chongpei_chakra$field = new uint();
      }
      
      public function get hasMaxChongpeiChakra() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxChongpeiChakra(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_chongpei_chakra$field = param1;
      }
      
      public function get maxChongpeiChakra() : uint
      {
         return this.max_chongpei_chakra$field;
      }
      
      public function clearFirstOpenFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.first_open_flag$field = new Boolean();
      }
      
      public function get hasFirstOpenFlag() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set firstOpenFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.first_open_flag$field = param1;
      }
      
      public function get firstOpenFlag() : Boolean
      {
         return this.first_open_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
         }
         if(this.hasGuildFunds)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_funds$field);
         }
         if(this.hasChakra)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.chakra$field);
         }
         if(this.hasMaxChongpeiChakra)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.max_chongpei_chakra$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.beastChips.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.beastChips[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.guildBeasts.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.guildBeasts[_loc3_]);
            _loc3_++;
         }
         if(this.hasFirstOpenFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_BOOL(param1,this.first_open_flag$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
