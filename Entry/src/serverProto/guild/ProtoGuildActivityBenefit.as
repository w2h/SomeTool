package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildActivityBenefit extends Message
   {
      
      public static const GUILD_CONTRIBUTION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityBenefit.guild_contribution","guildContribution",1 << 3 | WireType.VARINT);
      
      public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityBenefit.copper","copper",2 << 3 | WireType.VARINT);
      
      public static const GUILD_FUND:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityBenefit.guild_fund","guildFund",3 << 3 | WireType.VARINT);
       
      private var guild_contribution$field:int;
      
      private var hasField$0:uint = 0;
      
      private var copper$field:int;
      
      private var guild_fund$field:int;
      
      public function ProtoGuildActivityBenefit()
      {
         super();
      }
      
      public function clearGuildContribution() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.guild_contribution$field = new int();
      }
      
      public function get hasGuildContribution() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set guildContribution(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.guild_contribution$field = param1;
      }
      
      public function get guildContribution() : int
      {
         return this.guild_contribution$field;
      }
      
      public function clearCopper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.copper$field = new int();
      }
      
      public function get hasCopper() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set copper(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.copper$field = param1;
      }
      
      public function get copper() : int
      {
         return this.copper$field;
      }
      
      public function clearGuildFund() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.guild_fund$field = new int();
      }
      
      public function get hasGuildFund() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set guildFund(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.guild_fund$field = param1;
      }
      
      public function get guildFund() : int
      {
         return this.guild_fund$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasGuildContribution)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.guild_contribution$field);
         }
         if(this.hasCopper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.copper$field);
         }
         if(this.hasGuildFund)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.guild_fund$field);
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
