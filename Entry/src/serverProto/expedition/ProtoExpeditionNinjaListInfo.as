package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoExpeditionNinjaListInfo extends Message
   {
      
      public static const CARRY_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionNinjaListInfo.carry_ninja_list","carryNinjaList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const RESERVE_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionNinjaListInfo.reserve_ninja_list","reserveNinjaList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const MAX_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionNinjaListInfo.max_ninja_count","maxNinjaCount",4 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
      public var carryNinjaList:Array;
      
      [ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
      public var reserveNinjaList:Array;
      
      private var max_ninja_count$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoExpeditionNinjaListInfo()
      {
         this.carryNinjaList = [];
         this.reserveNinjaList = [];
         super();
      }
      
      public function clearMaxNinjaCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.max_ninja_count$field = new int();
      }
      
      public function get hasMaxNinjaCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set maxNinjaCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.max_ninja_count$field = param1;
      }
      
      public function get maxNinjaCount() : int
      {
         return this.max_ninja_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.carryNinjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.carryNinjaList[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.reserveNinjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.reserveNinjaList[_loc3_]);
            _loc3_++;
         }
         if(this.hasMaxNinjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.max_ninja_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
