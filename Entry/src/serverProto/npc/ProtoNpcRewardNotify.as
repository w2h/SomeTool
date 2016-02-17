package serverProto.npc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNpcRewardNotify extends Message
   {
      
      public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.npc.ProtoNpcRewardNotify.scene_id","sceneId",1 << 3 | WireType.VARINT);
      
      public static const CLIENT_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.npc.ProtoNpcRewardNotify.client_id","clientId",2 << 3 | WireType.VARINT);
      
      public static const NPC_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.npc.ProtoNpcRewardNotify.npc_type","npcType",3 << 3 | WireType.VARINT,NpcType);
      
      public static const REWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoNpcRewardNotify.reward_info","rewardInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      private var scene_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var client_id$field:int;
      
      private var npc_type$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var rewardInfo:Array;
      
      public function ProtoNpcRewardNotify()
      {
         this.rewardInfo = [];
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
      
      public function clearClientId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.client_id$field = new int();
      }
      
      public function get hasClientId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set clientId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.client_id$field = param1;
      }
      
      public function get clientId() : int
      {
         return this.client_id$field;
      }
      
      public function clearNpcType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.npc_type$field = new int();
      }
      
      public function get hasNpcType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set npcType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.npc_type$field = param1;
      }
      
      public function get npcType() : int
      {
         return this.npc_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasSceneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.scene_id$field);
         }
         if(this.hasClientId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.client_id$field);
         }
         if(this.hasNpcType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.npc_type$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rewardInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rewardInfo[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
