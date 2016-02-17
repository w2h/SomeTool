package serverProto.activity
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
   
   public final class ProtoKuafuTuanPackage extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanPackage.index","index",1 << 3 | WireType.VARINT);
      
      public static const SELL_ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanPackage.sell_item_id","sellItemId",2 << 3 | WireType.VARINT);
      
      public static const PACKAGE_NAME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanPackage.package_name","packageName",3 << 3 | WireType.VARINT);
      
      public static const FORMER_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanPackage.former_price","formerPrice",4 << 3 | WireType.VARINT);
      
      public static const TUAN_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanPackage.tuan_price","tuanPrice",5 << 3 | WireType.VARINT);
      
      public static const PACKAGE_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanPackage.package_status","packageStatus",6 << 3 | WireType.VARINT);
      
      public static const CUR_TUAN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuanPackage.cur_tuan_num","curTuanNum",7 << 3 | WireType.VARINT);
      
      public static const TUAN_FANLI:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoKuafuTuanPackage.tuan_fanli","tuanFanli",8 << 3 | WireType.LENGTH_DELIMITED,ProtoKuafuTuanfanli);
       
      private var index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var sell_item_id$field:uint;
      
      private var package_name$field:uint;
      
      private var former_price$field:uint;
      
      private var tuan_price$field:uint;
      
      private var package_status$field:uint;
      
      private var cur_tuan_num$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoKuafuTuanfanli")]
      public var tuanFanli:Array;
      
      public function ProtoKuafuTuanPackage()
      {
         this.tuanFanli = [];
         super();
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.index$field = new uint();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set index(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.index$field = param1;
      }
      
      public function get index() : uint
      {
         return this.index$field;
      }
      
      public function clearSellItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.sell_item_id$field = new uint();
      }
      
      public function get hasSellItemId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set sellItemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.sell_item_id$field = param1;
      }
      
      public function get sellItemId() : uint
      {
         return this.sell_item_id$field;
      }
      
      public function clearPackageName() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.package_name$field = new uint();
      }
      
      public function get hasPackageName() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set packageName(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.package_name$field = param1;
      }
      
      public function get packageName() : uint
      {
         return this.package_name$field;
      }
      
      public function clearFormerPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.former_price$field = new uint();
      }
      
      public function get hasFormerPrice() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set formerPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.former_price$field = param1;
      }
      
      public function get formerPrice() : uint
      {
         return this.former_price$field;
      }
      
      public function clearTuanPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.tuan_price$field = new uint();
      }
      
      public function get hasTuanPrice() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set tuanPrice(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.tuan_price$field = param1;
      }
      
      public function get tuanPrice() : uint
      {
         return this.tuan_price$field;
      }
      
      public function clearPackageStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.package_status$field = new uint();
      }
      
      public function get hasPackageStatus() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set packageStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.package_status$field = param1;
      }
      
      public function get packageStatus() : uint
      {
         return this.package_status$field;
      }
      
      public function clearCurTuanNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.cur_tuan_num$field = new uint();
      }
      
      public function get hasCurTuanNum() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set curTuanNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.cur_tuan_num$field = param1;
      }
      
      public function get curTuanNum() : uint
      {
         return this.cur_tuan_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.index$field);
         }
         if(this.hasSellItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.sell_item_id$field);
         }
         if(this.hasPackageName)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.package_name$field);
         }
         if(this.hasFormerPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.former_price$field);
         }
         if(this.hasTuanPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.tuan_price$field);
         }
         if(this.hasPackageStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.package_status$field);
         }
         if(this.hasCurTuanNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_tuan_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.tuanFanli.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tuanFanli[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
