package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGPackageFenpeiDoReq extends Message
   {
      
      public static const FENPEI_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGPackageFenpeiDoReq.fenpei_player_id","fenpeiPlayerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const FENPEI_PACKAGE_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGPackageFenpeiDoReq.fenpei_package_seq","fenpeiPackageSeq",2 << 3 | WireType.VARINT);
       
      private var fenpei_player_id$field:ProtoPlayerKey;
      
      private var fenpei_package_seq$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGvGPackageFenpeiDoReq()
      {
         super();
      }
      
      public function clearFenpeiPlayerId() : void
      {
         this.fenpei_player_id$field = null;
      }
      
      public function get hasFenpeiPlayerId() : Boolean
      {
         return this.fenpei_player_id$field != null;
      }
      
      public function set fenpeiPlayerId(param1:ProtoPlayerKey) : void
      {
         this.fenpei_player_id$field = param1;
      }
      
      public function get fenpeiPlayerId() : ProtoPlayerKey
      {
         return this.fenpei_player_id$field;
      }
      
      public function clearFenpeiPackageSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.fenpei_package_seq$field = new uint();
      }
      
      public function get hasFenpeiPackageSeq() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fenpeiPackageSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.fenpei_package_seq$field = param1;
      }
      
      public function get fenpeiPackageSeq() : uint
      {
         return this.fenpei_package_seq$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFenpeiPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fenpei_player_id$field);
         }
         if(this.hasFenpeiPackageSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.fenpei_package_seq$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
