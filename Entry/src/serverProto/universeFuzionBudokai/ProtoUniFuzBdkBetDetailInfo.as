package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_FLOAT;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzBdkBetDetailInfo extends Message
   {
      
      public static const BATTLE_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetDetailInfo.battle_count","battleCount",1 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetDetailInfo.score","score",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkBetContent);
      
      public static const CHIP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetDetailInfo.chip","chip",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkBetContent);
      
      public static const ODDS:RepeatedFieldDescriptor$TYPE_FLOAT = new RepeatedFieldDescriptor$TYPE_FLOAT("serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetDetailInfo.odds","odds",4 << 3 | WireType.FIXED_32_BIT);
       
      public var battleCount:int;
      
      private var score$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetContent;
      
      private var chip$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetContent;
      
      [ArrayElementType("Number")]
      public var odds:Array;
      
      public function ProtoUniFuzBdkBetDetailInfo()
      {
         this.odds = [];
         super();
      }
      
      public function clearScore() : void
      {
         this.score$field = null;
      }
      
      public function get hasScore() : Boolean
      {
         return this.score$field != null;
      }
      
      public function set score(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetContent) : void
      {
         this.score$field = param1;
      }
      
      public function get score() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetContent
      {
         return this.score$field;
      }
      
      public function clearChip() : void
      {
         this.chip$field = null;
      }
      
      public function get hasChip() : Boolean
      {
         return this.chip$field != null;
      }
      
      public function set chip(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetContent) : void
      {
         this.chip$field = param1;
      }
      
      public function get chip() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkBetContent
      {
         return this.chip$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.battleCount);
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.score$field);
         }
         if(this.hasChip)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chip$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.odds.length)
         {
            WriteUtils.writeTag(param1,WireType.FIXED_32_BIT,4);
            WriteUtils.write$TYPE_FLOAT(param1,this.odds[_loc2_]);
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
