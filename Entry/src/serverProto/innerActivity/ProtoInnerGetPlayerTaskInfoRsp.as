package serverProto.innerActivity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoInnerGetPlayerTaskInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.ret","ret",1 << 3 | WireType.VARINT);
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.player_id","playerId",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.player_name","playerName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PLAYER_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.player_level","playerLevel",4 << 3 | WireType.VARINT);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.role_category","roleCategory",5 << 3 | WireType.VARINT);
      
      public static const IF_OWN_LEVEL5_STONE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.if_own_level5_stone","ifOwnLevel5Stone",6 << 3 | WireType.VARINT);
      
      public static const IF_FULL_FORGE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.if_full_forge","ifFullForge",7 << 3 | WireType.VARINT);
      
      public static const IF_OWN_LEVEL6_JADE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.innerActivity.ProtoInnerGetPlayerTaskInfoRsp.if_own_level6_jade","ifOwnLevel6Jade",8 << 3 | WireType.VARINT);
       
      private var ret$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      private var player_level$field:int;
      
      private var role_category$field:int;
      
      private var if_own_level5_stone$field:Boolean;
      
      private var if_full_forge$field:Boolean;
      
      private var if_own_level6_jade$field:Boolean;
      
      public function ProtoInnerGetPlayerTaskInfoRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ret$field = new uint();
      }
      
      public function get hasRet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ret(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ret$field = param1;
      }
      
      public function get ret() : uint
      {
         return this.ret$field;
      }
      
      public function clearPlayerId() : void
      {
         this.player_id$field = null;
      }
      
      public function get hasPlayerId() : Boolean
      {
         return this.player_id$field != null;
      }
      
      public function set playerId(param1:ProtoPlayerKey) : void
      {
         this.player_id$field = param1;
      }
      
      public function get playerId() : ProtoPlayerKey
      {
         return this.player_id$field;
      }
      
      public function clearPlayerName() : void
      {
         this.player_name$field = null;
      }
      
      public function get hasPlayerName() : Boolean
      {
         return this.player_name$field != null;
      }
      
      public function set playerName(param1:String) : void
      {
         this.player_name$field = param1;
      }
      
      public function get playerName() : String
      {
         return this.player_name$field;
      }
      
      public function clearPlayerLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.player_level$field = new int();
      }
      
      public function get hasPlayerLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set playerLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.player_level$field = param1;
      }
      
      public function get playerLevel() : int
      {
         return this.player_level$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      public function clearIfOwnLevel5Stone() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.if_own_level5_stone$field = new Boolean();
      }
      
      public function get hasIfOwnLevel5Stone() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set ifOwnLevel5Stone(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.if_own_level5_stone$field = param1;
      }
      
      public function get ifOwnLevel5Stone() : Boolean
      {
         return this.if_own_level5_stone$field;
      }
      
      public function clearIfFullForge() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.if_full_forge$field = new Boolean();
      }
      
      public function get hasIfFullForge() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set ifFullForge(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.if_full_forge$field = param1;
      }
      
      public function get ifFullForge() : Boolean
      {
         return this.if_full_forge$field;
      }
      
      public function clearIfOwnLevel6Jade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.if_own_level6_jade$field = new Boolean();
      }
      
      public function get hasIfOwnLevel6Jade() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set ifOwnLevel6Jade(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.if_own_level6_jade$field = param1;
      }
      
      public function get ifOwnLevel6Jade() : Boolean
      {
         return this.if_own_level6_jade$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ret$field);
         }
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.player_name$field);
         }
         if(this.hasPlayerLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.player_level$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.role_category$field);
         }
         if(this.hasIfOwnLevel5Stone)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.if_own_level5_stone$field);
         }
         if(this.hasIfFullForge)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_BOOL(param1,this.if_full_forge$field);
         }
         if(this.hasIfOwnLevel6Jade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_BOOL(param1,this.if_own_level6_jade$field);
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
