package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoManagerAjustBeastReq extends Message
   {
      
      public static const FROM_BATTLE_REQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoManagerAjustBeastReq.from_battle_req","fromBattleReq",1 << 3 | WireType.VARINT);
      
      public static const TO_BATTLE_REQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoManagerAjustBeastReq.to_battle_req","toBattleReq",2 << 3 | WireType.VARINT);
       
      private var from_battle_req$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var to_battle_req$field:uint;
      
      public function ProtoManagerAjustBeastReq()
      {
         super();
      }
      
      public function clearFromBattleReq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.from_battle_req$field = new uint();
      }
      
      public function get hasFromBattleReq() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fromBattleReq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.from_battle_req$field = param1;
      }
      
      public function get fromBattleReq() : uint
      {
         return this.from_battle_req$field;
      }
      
      public function clearToBattleReq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.to_battle_req$field = new uint();
      }
      
      public function get hasToBattleReq() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set toBattleReq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.to_battle_req$field = param1;
      }
      
      public function get toBattleReq() : uint
      {
         return this.to_battle_req$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFromBattleReq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.from_battle_req$field);
         }
         if(this.hasToBattleReq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.to_battle_req$field);
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
