package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaStarInfo extends Message
   {
      
      public static const NINJA_PIECES_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaStarInfo.ninja_pieces_id","ninjaPiecesId",1 << 3 | WireType.VARINT);
      
      public static const BEGIN_STAR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaStarInfo.begin_star","beginStar",2 << 3 | WireType.VARINT);
      
      public static const STAR_DETAIL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaStarInfo.star_detail","starDetail",3 << 3 | WireType.LENGTH_DELIMITED,ProtoStarDetail);
       
      private var ninja_pieces_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var begin_star$field:uint;
      
      [ArrayElementType("serverProto.baseInfo.ProtoStarDetail")]
      public var starDetail:Array;
      
      public function ProtoNinjaStarInfo()
      {
         this.starDetail = [];
         super();
      }
      
      public function clearNinjaPiecesId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_pieces_id$field = new uint();
      }
      
      public function get hasNinjaPiecesId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaPiecesId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_pieces_id$field = param1;
      }
      
      public function get ninjaPiecesId() : uint
      {
         return this.ninja_pieces_id$field;
      }
      
      public function clearBeginStar() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.begin_star$field = new uint();
      }
      
      public function get hasBeginStar() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set beginStar(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.begin_star$field = param1;
      }
      
      public function get beginStar() : uint
      {
         return this.begin_star$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasNinjaPiecesId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_pieces_id$field);
         }
         if(this.hasBeginStar)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_star$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.starDetail.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.starDetail[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
