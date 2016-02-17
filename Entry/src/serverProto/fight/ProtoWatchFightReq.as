package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWatchFightReq extends Message
   {
      
      public static const BATTLE_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.fight.ProtoWatchFightReq.battle_id","battleId",1 << 3 | WireType.VARINT);
      
      public static const SIDE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoWatchFightReq.side","side",2 << 3 | WireType.VARINT);
       
      public var battleId:UInt64;
      
      private var side$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoWatchFightReq()
      {
         super();
      }
      
      public function clearSide() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.side$field = new int();
      }
      
      public function get hasSide() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set side(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.side$field = param1;
      }
      
      public function get side() : int
      {
         return this.side$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT64(param1,this.battleId);
         if(this.hasSide)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.side$field);
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
