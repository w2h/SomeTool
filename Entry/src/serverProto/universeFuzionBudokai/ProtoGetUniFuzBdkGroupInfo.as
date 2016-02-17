package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetUniFuzBdkGroupInfo extends Message
   {
      
      public static const GROUP_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkGroupInfo.group_idx","groupIdx",1 << 3 | WireType.VARINT);
      
      public static const PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkGroupInfo.player_list","playerList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkWarPlayer);
       
      public var groupIdx:int;
      
      [ArrayElementType("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer")]
      public var playerList:Array;
      
      public function ProtoGetUniFuzBdkGroupInfo()
      {
         this.playerList = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.groupIdx);
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerList[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
