package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetEatExpLevelInfoRequest extends Message
   {
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoRequest.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const GOAL_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoRequest.goal_level","goalLevel",2 << 3 | WireType.VARINT);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoRequest.item_id","itemId",3 << 3 | WireType.VARINT);
       
      public var ninjaSeq:int;
      
      public var goalLevel:int;
      
      public var itemId:int;
      
      public function ProtoGetEatExpLevelInfoRequest()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.ninjaSeq);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.goalLevel);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.itemId);
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
