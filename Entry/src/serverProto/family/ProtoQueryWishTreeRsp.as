package serverProto.family
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
   
   public final class ProtoQueryWishTreeRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoQueryWishTreeRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CAN_WISH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryWishTreeRsp.can_wish","canWish",2 << 3 | WireType.VARINT);
      
      public static const WISH_TREE_STATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoQueryWishTreeRsp.wish_tree_state","wishTreeState",3 << 3 | WireType.LENGTH_DELIMITED,ProtoWishTreeState);
      
      public static const WISH_AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoQueryWishTreeRsp.wish_awards","wishAwards",4 << 3 | WireType.LENGTH_DELIMITED,ProtoWishTreeAward);
       
      public var ret:ProtoRetInfo;
      
      private var can_wish$field:int;
      
      private var hasField$0:uint = 0;
      
      private var wish_tree_state$field:serverProto.family.ProtoWishTreeState;
      
      [ArrayElementType("serverProto.family.ProtoWishTreeAward")]
      public var wishAwards:Array;
      
      public function ProtoQueryWishTreeRsp()
      {
         this.wishAwards = [];
         super();
      }
      
      public function clearCanWish() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.can_wish$field = new int();
      }
      
      public function get hasCanWish() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set canWish(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.can_wish$field = param1;
      }
      
      public function get canWish() : int
      {
         return this.can_wish$field;
      }
      
      public function clearWishTreeState() : void
      {
         this.wish_tree_state$field = null;
      }
      
      public function get hasWishTreeState() : Boolean
      {
         return this.wish_tree_state$field != null;
      }
      
      public function set wishTreeState(param1:serverProto.family.ProtoWishTreeState) : void
      {
         this.wish_tree_state$field = param1;
      }
      
      public function get wishTreeState() : serverProto.family.ProtoWishTreeState
      {
         return this.wish_tree_state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasCanWish)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.can_wish$field);
         }
         if(this.hasWishTreeState)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.wish_tree_state$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.wishAwards.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.wishAwards[_loc2_]);
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
