package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerTeamInfoUpdateRequest extends Message
   {
      
      public static const TEAM_RECEIVE_INVITE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoPlayerTeamInfoUpdateRequest.team_receive_invite","teamReceiveInvite",1 << 3 | WireType.VARINT);
       
      private var team_receive_invite$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoPlayerTeamInfoUpdateRequest()
      {
         super();
      }
      
      public function clearTeamReceiveInvite() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.team_receive_invite$field = new Boolean();
      }
      
      public function get hasTeamReceiveInvite() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set teamReceiveInvite(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.team_receive_invite$field = param1;
      }
      
      public function get teamReceiveInvite() : Boolean
      {
         return this.team_receive_invite$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTeamReceiveInvite)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.team_receive_invite$field);
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
