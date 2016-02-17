package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamKathaChange extends Message
   {
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamKathaChange.team_id","teamId",1 << 3 | WireType.VARINT);
      
      public static const KATHA_CHANGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTeamKathaChange.katha_change","kathaChange",2 << 3 | WireType.VARINT);
      
      public static const NINJA_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTeamKathaChange.ninja_pos","ninjaPos",3 << 3 | WireType.VARINT);
       
      public var teamId:uint;
      
      public var kathaChange:int;
      
      private var ninja_pos$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoTeamKathaChange()
      {
         super();
      }
      
      public function clearNinjaPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_pos$field = new int();
      }
      
      public function get hasNinjaPos() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_pos$field = param1;
      }
      
      public function get ninjaPos() : int
      {
         return this.ninja_pos$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.teamId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.kathaChange);
         if(this.hasNinjaPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_pos$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
