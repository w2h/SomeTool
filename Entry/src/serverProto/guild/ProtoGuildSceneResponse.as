package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildSceneResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildSceneResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildSceneResponse.scene_id","sceneId",2 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildSceneResponse.location","location",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
      
      public static const IS_FIRST_GVG_FINAL_BATTLE_RANK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildSceneResponse.is_first_gvg_final_battle_rank","isFirstGvgFinalBattleRank",4 << 3 | WireType.VARINT);
      
      public static const GUILD_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildSceneResponse.guild_level","guildLevel",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var scene_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var location$field:ProtoPoint;
      
      private var is_first_gvg_final_battle_rank$field:Boolean;
      
      private var guild_level$field:int;
      
      public function ProtoGuildSceneResponse()
      {
         super();
      }
      
      public function clearSceneId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.scene_id$field = new int();
      }
      
      public function get hasSceneId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set sceneId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.scene_id$field = param1;
      }
      
      public function get sceneId() : int
      {
         return this.scene_id$field;
      }
      
      public function clearLocation() : void
      {
         this.location$field = null;
      }
      
      public function get hasLocation() : Boolean
      {
         return this.location$field != null;
      }
      
      public function set location(param1:ProtoPoint) : void
      {
         this.location$field = param1;
      }
      
      public function get location() : ProtoPoint
      {
         return this.location$field;
      }
      
      public function clearIsFirstGvgFinalBattleRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.is_first_gvg_final_battle_rank$field = new Boolean();
      }
      
      public function get hasIsFirstGvgFinalBattleRank() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set isFirstGvgFinalBattleRank(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.is_first_gvg_final_battle_rank$field = param1;
      }
      
      public function get isFirstGvgFinalBattleRank() : Boolean
      {
         return this.is_first_gvg_final_battle_rank$field;
      }
      
      public function clearGuildLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.guild_level$field = new int();
      }
      
      public function get hasGuildLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set guildLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.guild_level$field = param1;
      }
      
      public function get guildLevel() : int
      {
         return this.guild_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSceneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.scene_id$field);
         }
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.location$field);
         }
         if(this.hasIsFirstGvgFinalBattleRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_BOOL(param1,this.is_first_gvg_final_battle_rank$field);
         }
         if(this.hasGuildLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.guild_level$field);
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
