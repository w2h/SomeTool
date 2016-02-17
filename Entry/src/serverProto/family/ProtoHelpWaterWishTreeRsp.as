package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHelpWaterWishTreeRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterWishTreeRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const FRIEND_TREE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterWishTreeRsp.friend_tree_info","friendTreeInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFriendWishTreeInfo);
      
      public static const WISH_TREE_LEVELUP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoHelpWaterWishTreeRsp.wish_tree_levelup","wishTreeLevelup",3 << 3 | WireType.VARINT);
      
      public static const MY_WISH_TREE_STATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterWishTreeRsp.my_wish_tree_state","myWishTreeState",4 << 3 | WireType.LENGTH_DELIMITED,ProtoWishTreeState);
       
      public var ret:ProtoRetInfo;
      
      private var friend_tree_info$field:serverProto.family.ProtoFriendWishTreeInfo;
      
      private var wish_tree_levelup$field:int;
      
      private var hasField$0:uint = 0;
      
      private var my_wish_tree_state$field:serverProto.family.ProtoWishTreeState;
      
      public function ProtoHelpWaterWishTreeRsp()
      {
         super();
      }
      
      public function clearFriendTreeInfo() : void
      {
         this.friend_tree_info$field = null;
      }
      
      public function get hasFriendTreeInfo() : Boolean
      {
         return this.friend_tree_info$field != null;
      }
      
      public function set friendTreeInfo(param1:serverProto.family.ProtoFriendWishTreeInfo) : void
      {
         this.friend_tree_info$field = param1;
      }
      
      public function get friendTreeInfo() : serverProto.family.ProtoFriendWishTreeInfo
      {
         return this.friend_tree_info$field;
      }
      
      public function clearWishTreeLevelup() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.wish_tree_levelup$field = new int();
      }
      
      public function get hasWishTreeLevelup() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set wishTreeLevelup(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.wish_tree_levelup$field = param1;
      }
      
      public function get wishTreeLevelup() : int
      {
         return this.wish_tree_levelup$field;
      }
      
      public function clearMyWishTreeState() : void
      {
         this.my_wish_tree_state$field = null;
      }
      
      public function get hasMyWishTreeState() : Boolean
      {
         return this.my_wish_tree_state$field != null;
      }
      
      public function set myWishTreeState(param1:serverProto.family.ProtoWishTreeState) : void
      {
         this.my_wish_tree_state$field = param1;
      }
      
      public function get myWishTreeState() : serverProto.family.ProtoWishTreeState
      {
         return this.my_wish_tree_state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasFriendTreeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend_tree_info$field);
         }
         if(this.hasWishTreeLevelup)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.wish_tree_levelup$field);
         }
         if(this.hasMyWishTreeState)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.my_wish_tree_state$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
