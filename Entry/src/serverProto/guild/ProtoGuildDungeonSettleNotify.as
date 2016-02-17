package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDungeonSettleNotify extends Message
   {
      
      public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonSettleNotify.money","money",1 << 3 | WireType.VARINT);
      
      public static const GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonSettleNotify.guild_contri","guildContri",2 << 3 | WireType.VARINT);
      
      public static const GUILD_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonSettleNotify.guild_money","guildMoney",3 << 3 | WireType.VARINT);
       
      private var money$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_contri$field:uint;
      
      private var guild_money$field:uint;
      
      public function ProtoGuildDungeonSettleNotify()
      {
         super();
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.money$field = new uint();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set money(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.money$field = param1;
      }
      
      public function get money() : uint
      {
         return this.money$field;
      }
      
      public function clearGuildContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_contri$field = new uint();
      }
      
      public function get hasGuildContri() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_contri$field = param1;
      }
      
      public function get guildContri() : uint
      {
         return this.guild_contri$field;
      }
      
      public function clearGuildMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.guild_money$field = new uint();
      }
      
      public function get hasGuildMoney() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set guildMoney(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.guild_money$field = param1;
      }
      
      public function get guildMoney() : uint
      {
         return this.guild_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.money$field);
         }
         if(this.hasGuildContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_contri$field);
         }
         if(this.hasGuildMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_money$field);
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
