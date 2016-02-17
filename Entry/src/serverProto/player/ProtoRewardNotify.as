package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRewardNotify extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoRewardNotify.type","type",1 << 3 | WireType.VARINT,ProtoRewardType);
      
      public static const REWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoRewardNotify.reward_list","rewardList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const SCORE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoRewardNotify.score_info","scoreInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoBefallDungeonScoreInfo);
       
      public var type:int;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var rewardList:Array;
      
      private var score_info$field:serverProto.player.ProtoBefallDungeonScoreInfo;
      
      public function ProtoRewardNotify()
      {
         this.rewardList = [];
         super();
      }
      
      public function clearScoreInfo() : void
      {
         this.score_info$field = null;
      }
      
      public function get hasScoreInfo() : Boolean
      {
         return this.score_info$field != null;
      }
      
      public function set scoreInfo(param1:serverProto.player.ProtoBefallDungeonScoreInfo) : void
      {
         this.score_info$field = param1;
      }
      
      public function get scoreInfo() : serverProto.player.ProtoBefallDungeonScoreInfo
      {
         return this.score_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         var _loc2_:uint = 0;
         while(_loc2_ < this.rewardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rewardList[_loc2_]);
            _loc2_++;
         }
         if(this.hasScoreInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.score_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}