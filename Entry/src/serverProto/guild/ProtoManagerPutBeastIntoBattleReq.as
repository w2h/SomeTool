package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoManagerPutBeastIntoBattleReq extends Message
   {
      
      public static const BEAST_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoManagerPutBeastIntoBattleReq.beast_id","beastId",1 << 3 | WireType.VARINT);
      
      public static const BATTLE_REQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoManagerPutBeastIntoBattleReq.battle_req","battleReq",2 << 3 | WireType.VARINT);
       
      private var beast_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var battle_req$field:uint;
      
      public function ProtoManagerPutBeastIntoBattleReq()
      {
         super();
      }
      
      public function clearBeastId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.beast_id$field = new int();
      }
      
      public function get hasBeastId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beastId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.beast_id$field = param1;
      }
      
      public function get beastId() : int
      {
         return this.beast_id$field;
      }
      
      public function clearBattleReq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.battle_req$field = new uint();
      }
      
      public function get hasBattleReq() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set battleReq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.battle_req$field = param1;
      }
      
      public function get battleReq() : uint
      {
         return this.battle_req$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBeastId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.beast_id$field);
         }
         if(this.hasBattleReq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.battle_req$field);
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
