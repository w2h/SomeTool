package serverProto.fashion
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCommFashionInfoRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SHOW_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoCommFashionInfoRsp.show_flag","showFlag",2 << 3 | WireType.VARINT);
      
      public static const CURR_FASHION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoCommFashionInfoRsp.curr_fashion","currFashion",3 << 3 | WireType.VARINT);
      
      public static const FASHION_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.fashion_list","fashionList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoFashionInfo);
      
      public static const PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.property_info","propertyInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoFashionPropertyInfo);
      
      public static const CHIP_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fashion.ProtoCommFashionInfoRsp.chip_list","chipList",6 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var show_flag$field:int;
      
      private var hasField$0:uint = 0;
      
      private var curr_fashion$field:int;
      
      [ArrayElementType("serverProto.fashion.ProtoFashionInfo")]
      public var fashionList:Array;
      
      private var property_info$field:serverProto.fashion.ProtoFashionPropertyInfo;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var chipList:Array;
      
      public function ProtoCommFashionInfoRsp()
      {
         this.fashionList = [];
         this.chipList = [];
         super();
      }
      
      public function clearShowFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.show_flag$field = new int();
      }
      
      public function get hasShowFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set showFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.show_flag$field = param1;
      }
      
      public function get showFlag() : int
      {
         return this.show_flag$field;
      }
      
      public function clearCurrFashion() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.curr_fashion$field = new int();
      }
      
      public function get hasCurrFashion() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currFashion(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.curr_fashion$field = param1;
      }
      
      public function get currFashion() : int
      {
         return this.curr_fashion$field;
      }
      
      public function clearPropertyInfo() : void
      {
         this.property_info$field = null;
      }
      
      public function get hasPropertyInfo() : Boolean
      {
         return this.property_info$field != null;
      }
      
      public function set propertyInfo(param1:serverProto.fashion.ProtoFashionPropertyInfo) : void
      {
         this.property_info$field = param1;
      }
      
      public function get propertyInfo() : serverProto.fashion.ProtoFashionPropertyInfo
      {
         return this.property_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasShowFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.show_flag$field);
         }
         if(this.hasCurrFashion)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.curr_fashion$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.fashionList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fashionList[_loc2_]);
            _loc2_++;
         }
         if(this.hasPropertyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_info$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.chipList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chipList[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
