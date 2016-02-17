package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildTranslationKey extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildTranslationKey.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildTranslationKey.index","index",2 << 3 | WireType.VARINT);
      
      public static const PUT_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildTranslationKey.put_time","putTime",3 << 3 | WireType.VARINT);
       
      private var player_key$field:ProtoPlayerKey;
      
      private var index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var put_time$field:uint;
      
      public function ProtoGuildTranslationKey()
      {
         super();
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.index$field = new uint();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set index(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.index$field = param1;
      }
      
      public function get index() : uint
      {
         return this.index$field;
      }
      
      public function clearPutTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.put_time$field = new uint();
      }
      
      public function get hasPutTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set putTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.put_time$field = param1;
      }
      
      public function get putTime() : uint
      {
         return this.put_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.index$field);
         }
         if(this.hasPutTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.put_time$field);
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
