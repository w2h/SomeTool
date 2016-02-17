package serverProto.challengeTower
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChallengeTowerFightEndNotify extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.challengeTower.ProtoChallengeTowerFightEndNotify.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.challengeTower.ProtoChallengeTowerFightEndNotify.award","award",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.challengeTower.ProtoChallengeTowerFightEndNotify.info","info",3 << 3 | WireType.LENGTH_DELIMITED,ProtoChallengeTowerInfo);
      
      public static const FIGHT_SELF_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerFightEndNotify.fight_self_flag","fightSelfFlag",4 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      private var info$field:serverProto.challengeTower.ProtoChallengeTowerInfo;
      
      private var fight_self_flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoChallengeTowerFightEndNotify()
      {
         this.award = [];
         super();
      }
      
      public function clearInfo() : void
      {
         this.info$field = null;
      }
      
      public function get hasInfo() : Boolean
      {
         return this.info$field != null;
      }
      
      public function set info(param1:serverProto.challengeTower.ProtoChallengeTowerInfo) : void
      {
         this.info$field = param1;
      }
      
      public function get info() : serverProto.challengeTower.ProtoChallengeTowerInfo
      {
         return this.info$field;
      }
      
      public function clearFightSelfFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.fight_self_flag$field = new uint();
      }
      
      public function get hasFightSelfFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fightSelfFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.fight_self_flag$field = param1;
      }
      
      public function get fightSelfFlag() : uint
      {
         return this.fight_self_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc2_]);
            _loc2_++;
         }
         if(this.hasInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.info$field);
         }
         if(this.hasFightSelfFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.fight_self_flag$field);
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
