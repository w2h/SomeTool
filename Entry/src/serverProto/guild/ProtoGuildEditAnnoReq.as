package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildEditAnnoReq extends Message
   {
      
      public static const GUILD_QQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildEditAnnoReq.guild_qq","guildQq",1 << 3 | WireType.VARINT);
      
      public static const GUILD_ANNO:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildEditAnnoReq.guild_anno","guildAnno",2 << 3 | WireType.LENGTH_DELIMITED);
       
      private var guild_qq$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_anno$field:String;
      
      public function ProtoGuildEditAnnoReq()
      {
         super();
      }
      
      public function clearGuildQq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.guild_qq$field = new uint();
      }
      
      public function get hasGuildQq() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set guildQq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.guild_qq$field = param1;
      }
      
      public function get guildQq() : uint
      {
         return this.guild_qq$field;
      }
      
      public function clearGuildAnno() : void
      {
         this.guild_anno$field = null;
      }
      
      public function get hasGuildAnno() : Boolean
      {
         return this.guild_anno$field != null;
      }
      
      public function set guildAnno(param1:String) : void
      {
         this.guild_anno$field = param1;
      }
      
      public function get guildAnno() : String
      {
         return this.guild_anno$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasGuildQq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_qq$field);
         }
         if(this.hasGuildAnno)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.guild_anno$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
