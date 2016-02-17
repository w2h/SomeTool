package serverProto.worldBoss
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetWorldBossListResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossListResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CURRENT_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossListResp.current_time","currentTime",2 << 3 | WireType.VARINT);
      
      public static const WORLD_BOSS_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossListResp.world_boss_list","worldBossList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoWorldBossOpenInfo);
      
      public static const NEXT_WORLD_BOSS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossListResp.next_world_boss","nextWorldBoss",4 << 3 | WireType.LENGTH_DELIMITED,ProtoWorldBossOpenInfo);
       
      public var ret:ProtoRetInfo;
      
      private var current_time$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.worldBoss.ProtoWorldBossOpenInfo")]
      public var worldBossList:Array;
      
      private var next_world_boss$field:serverProto.worldBoss.ProtoWorldBossOpenInfo;
      
      public function ProtoGetWorldBossListResp()
      {
         this.worldBossList = [];
         super();
      }
      
      public function clearCurrentTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_time$field = new int();
      }
      
      public function get hasCurrentTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_time$field = param1;
      }
      
      public function get currentTime() : int
      {
         return this.current_time$field;
      }
      
      public function clearNextWorldBoss() : void
      {
         this.next_world_boss$field = null;
      }
      
      public function get hasNextWorldBoss() : Boolean
      {
         return this.next_world_boss$field != null;
      }
      
      public function set nextWorldBoss(param1:serverProto.worldBoss.ProtoWorldBossOpenInfo) : void
      {
         this.next_world_boss$field = param1;
      }
      
      public function get nextWorldBoss() : serverProto.worldBoss.ProtoWorldBossOpenInfo
      {
         return this.next_world_boss$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasCurrentTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.current_time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.worldBossList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.worldBossList[_loc2_]);
            _loc2_++;
         }
         if(this.hasNextWorldBoss)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.next_world_boss$field);
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
