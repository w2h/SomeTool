package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import serverProto.inc.ProtoLocationInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendEndResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STAR_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.star_num","starNum",2 << 3 | WireType.VARINT);
      
      public static const REWARD_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.reward_ary","rewardAry",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.reason","reason",4 << 3 | WireType.VARINT,ProtoNinjaLegendEndReason);
      
      public static const FAVOUR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.favour","favour",5 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.location","location",6 << 3 | WireType.LENGTH_DELIMITED,ProtoLocationInfo);
      
      public static const NEW_ENDING_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.new_ending_ary","newEndingAry",7 << 3 | WireType.VARINT);
      
      public static const NEW_ENDING_PROPERTY_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.new_ending_property_level","newEndingPropertyLevel",8 << 3 | WireType.VARINT);
      
      public static const IS_FISRT_FINISH:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.is_fisrt_finish","isFisrtFinish",9 << 3 | WireType.VARINT);
      
      public static const NINJA_CLASS_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndResponse.ninja_class_id","ninjaClassId",10 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var star_num$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var rewardAry:Array;
      
      private var reason$field:int;
      
      private var favour$field:int;
      
      private var location$field:ProtoLocationInfo;
      
      [ArrayElementType("uint")]
      public var newEndingAry:Array;
      
      private var new_ending_property_level$field:uint;
      
      private var is_fisrt_finish$field:Boolean;
      
      private var ninja_class_id$field:uint;
      
      public function ProtoNinjaLegendEndResponse()
      {
         this.rewardAry = [];
         this.newEndingAry = [];
         super();
      }
      
      public function clearStarNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.star_num$field = new uint();
      }
      
      public function get hasStarNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set starNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.star_num$field = param1;
      }
      
      public function get starNum() : uint
      {
         return this.star_num$field;
      }
      
      public function clearReason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.reason$field = new int();
      }
      
      public function get hasReason() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set reason(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.reason$field = param1;
      }
      
      public function get reason() : int
      {
         return this.reason$field;
      }
      
      public function clearFavour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.favour$field = new int();
      }
      
      public function get hasFavour() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set favour(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.favour$field = param1;
      }
      
      public function get favour() : int
      {
         return this.favour$field;
      }
      
      public function clearLocation() : void
      {
         this.location$field = null;
      }
      
      public function get hasLocation() : Boolean
      {
         return this.location$field != null;
      }
      
      public function set location(param1:ProtoLocationInfo) : void
      {
         this.location$field = param1;
      }
      
      public function get location() : ProtoLocationInfo
      {
         return this.location$field;
      }
      
      public function clearNewEndingPropertyLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.new_ending_property_level$field = new uint();
      }
      
      public function get hasNewEndingPropertyLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set newEndingPropertyLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.new_ending_property_level$field = param1;
      }
      
      public function get newEndingPropertyLevel() : uint
      {
         return this.new_ending_property_level$field;
      }
      
      public function clearIsFisrtFinish() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.is_fisrt_finish$field = new Boolean();
      }
      
      public function get hasIsFisrtFinish() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set isFisrtFinish(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.is_fisrt_finish$field = param1;
      }
      
      public function get isFisrtFinish() : Boolean
      {
         return this.is_fisrt_finish$field;
      }
      
      public function clearNinjaClassId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.ninja_class_id$field = new uint();
      }
      
      public function get hasNinjaClassId() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set ninjaClassId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.ninja_class_id$field = param1;
      }
      
      public function get ninjaClassId() : uint
      {
         return this.ninja_class_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasStarNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.star_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rewardAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rewardAry[_loc2_]);
            _loc2_++;
         }
         if(this.hasReason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.reason$field);
         }
         if(this.hasFavour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.favour$field);
         }
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.location$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.newEndingAry.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.newEndingAry[_loc3_]);
            _loc3_++;
         }
         if(this.hasNewEndingPropertyLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.new_ending_property_level$field);
         }
         if(this.hasIsFisrtFinish)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_BOOL(param1,this.is_fisrt_finish$field);
         }
         if(this.hasNinjaClassId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_class_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
