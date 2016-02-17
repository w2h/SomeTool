package serverProto.rankBattle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNinjaSimpleInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoBattleRivalNinjaInfo extends Message
   {
      
      public static const MID_NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoBattleRivalNinjaInfo.mid_ninja_tips","midNinjaTips",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSimpleInfo);
      
      public static const UP_NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoBattleRivalNinjaInfo.up_ninja_tips","upNinjaTips",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSimpleInfo);
      
      public static const DOWN_NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoBattleRivalNinjaInfo.down_ninja_tips","downNinjaTips",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaSimpleInfo);
       
      [ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
      public var midNinjaTips:Array;
      
      [ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
      public var upNinjaTips:Array;
      
      [ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
      public var downNinjaTips:Array;
      
      public function ProtoBattleRivalNinjaInfo()
      {
         this.midNinjaTips = [];
         this.upNinjaTips = [];
         this.downNinjaTips = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.midNinjaTips.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.midNinjaTips[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.upNinjaTips.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.upNinjaTips[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.downNinjaTips.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.downNinjaTips[_loc4_]);
            _loc4_++;
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
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
