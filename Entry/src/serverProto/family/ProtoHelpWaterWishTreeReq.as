package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHelpWaterWishTreeReq extends Message
   {
      
      public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterWishTreeReq.friend_id","friendId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      private var friend_id$field:ProtoPlayerKey;
      
      public function ProtoHelpWaterWishTreeReq()
      {
         super();
      }
      
      public function clearFriendId() : void
      {
         this.friend_id$field = null;
      }
      
      public function get hasFriendId() : Boolean
      {
         return this.friend_id$field != null;
      }
      
      public function set friendId(param1:ProtoPlayerKey) : void
      {
         this.friend_id$field = param1;
      }
      
      public function get friendId() : ProtoPlayerKey
      {
         return this.friend_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFriendId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
