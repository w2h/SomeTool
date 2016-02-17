package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRoberryInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoRoberryInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoRoberryInfo.guild_name","guildName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.guild.ProtoRoberryInfo.guild_id","guildId",3 << 3 | WireType.VARINT);
      
      public static const PLAYER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoRoberryInfo.player","player",4 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildActivityPlayerInfo);
      
      public static const BENEFIT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoRoberryInfo.benefit","benefit",6 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildActivityBenefit);
       
      public var id:int;
      
      private var guild_name$field:String;
      
      private var guild_id$field:UInt64;
      
      [ArrayElementType("serverProto.guild.ProtoGuildActivityPlayerInfo")]
      public var player:Array;
      
      private var benefit$field:serverProto.guild.ProtoGuildActivityBenefit;
      
      public function ProtoRoberryInfo()
      {
         this.player = [];
         super();
      }
      
      public function clearGuildName() : void
      {
         this.guild_name$field = null;
      }
      
      public function get hasGuildName() : Boolean
      {
         return this.guild_name$field != null;
      }
      
      public function set guildName(param1:String) : void
      {
         this.guild_name$field = param1;
      }
      
      public function get guildName() : String
      {
         return this.guild_name$field;
      }
      
      public function clearGuildId() : void
      {
         this.guild_id$field = null;
      }
      
      public function get hasGuildId() : Boolean
      {
         return this.guild_id$field != null;
      }
      
      public function set guildId(param1:UInt64) : void
      {
         this.guild_id$field = param1;
      }
      
      public function get guildId() : UInt64
      {
         return this.guild_id$field;
      }
      
      public function clearBenefit() : void
      {
         this.benefit$field = null;
      }
      
      public function get hasBenefit() : Boolean
      {
         return this.benefit$field != null;
      }
      
      public function set benefit(param1:serverProto.guild.ProtoGuildActivityBenefit) : void
      {
         this.benefit$field = param1;
      }
      
      public function get benefit() : serverProto.guild.ProtoGuildActivityBenefit
      {
         return this.benefit$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.id);
         if(this.hasGuildName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.guild_name$field);
         }
         if(this.hasGuildId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT64(param1,this.guild_id$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.player.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player[_loc2_]);
            _loc2_++;
         }
         if(this.hasBenefit)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.benefit$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
