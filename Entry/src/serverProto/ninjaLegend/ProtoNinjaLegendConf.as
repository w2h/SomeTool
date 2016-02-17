package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendConf extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendConf.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const NEED_STAR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendConf.need_star","needStar",2 << 3 | WireType.VARINT);
      
      public static const NEED_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendConf.need_level","needLevel",3 << 3 | WireType.VARINT);
      
      public static const NEED_FAVOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendConf.need_favour","needFavour",4 << 3 | WireType.VARINT);
      
      public static const NEED_FINISH_NINJA_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendConf.need_finish_ninja_ary","needFinishNinjaAry",5 << 3 | WireType.VARINT);
      
      public static const NEED_SEQUENCE_NINJA_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendConf.need_sequence_ninja_ary","needSequenceNinjaAry",6 << 3 | WireType.VARINT);
      
      public static const CLIENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendConf.client_id","clientId",7 << 3 | WireType.VARINT);
       
      private var ninja_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var need_star$field:uint;
      
      private var need_level$field:uint;
      
      private var need_favour$field:uint;
      
      [ArrayElementType("uint")]
      public var needFinishNinjaAry:Array;
      
      [ArrayElementType("uint")]
      public var needSequenceNinjaAry:Array;
      
      private var client_id$field:uint;
      
      public function ProtoNinjaLegendConf()
      {
         this.needFinishNinjaAry = [];
         this.needSequenceNinjaAry = [];
         super();
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_id$field = new uint();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : uint
      {
         return this.ninja_id$field;
      }
      
      public function clearNeedStar() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.need_star$field = new uint();
      }
      
      public function get hasNeedStar() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set needStar(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.need_star$field = param1;
      }
      
      public function get needStar() : uint
      {
         return this.need_star$field;
      }
      
      public function clearNeedLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.need_level$field = new uint();
      }
      
      public function get hasNeedLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set needLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.need_level$field = param1;
      }
      
      public function get needLevel() : uint
      {
         return this.need_level$field;
      }
      
      public function clearNeedFavour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.need_favour$field = new uint();
      }
      
      public function get hasNeedFavour() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set needFavour(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.need_favour$field = param1;
      }
      
      public function get needFavour() : uint
      {
         return this.need_favour$field;
      }
      
      public function clearClientId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.client_id$field = new uint();
      }
      
      public function get hasClientId() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set clientId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.client_id$field = param1;
      }
      
      public function get clientId() : uint
      {
         return this.client_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_id$field);
         }
         if(this.hasNeedStar)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.need_star$field);
         }
         if(this.hasNeedLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.need_level$field);
         }
         if(this.hasNeedFavour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.need_favour$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.needFinishNinjaAry.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.needFinishNinjaAry[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.needSequenceNinjaAry.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.needSequenceNinjaAry[_loc3_]);
            _loc3_++;
         }
         if(this.hasClientId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.client_id$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
