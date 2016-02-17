package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTrusteeNotify extends Message
   {
      
      public static const TEAM_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTrusteeNotify.team_pos","teamPos",1 << 3 | WireType.VARINT);
      
      public static const TRUSTEE_STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTrusteeNotify.trustee_state","trusteeState",2 << 3 | WireType.VARINT);
       
      public var teamPos:int;
      
      private var trustee_state$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoTrusteeNotify()
      {
         super();
      }
      
      public function clearTrusteeState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.trustee_state$field = new int();
      }
      
      public function get hasTrusteeState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set trusteeState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.trustee_state$field = param1;
      }
      
      public function get trusteeState() : int
      {
         return this.trustee_state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.teamPos);
         if(this.hasTrusteeState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.trustee_state$field);
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
