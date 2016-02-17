package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaRecruitInfo extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const NINJA_PIECES_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.ninja_pieces_id","ninjaPiecesId",2 << 3 | WireType.VARINT);
      
      public static const NINJA_PIECES_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.ninja_pieces_count","ninjaPiecesCount",3 << 3 | WireType.VARINT);
      
      public static const RECRUIT_PIECES_NEED:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaRecruitInfo.recruit_pieces_need","recruitPiecesNeed",4 << 3 | WireType.VARINT);
       
      public var ninjaId:uint;
      
      public var ninjaPiecesId:uint;
      
      public var ninjaPiecesCount:uint;
      
      public var recruitPiecesNeed:uint;
      
      public function ProtoNinjaRecruitInfo()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaPiecesId);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaPiecesCount);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.recruitPiecesNeed);
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
