package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.bag.ProtoEquipInfo;
   import serverProto.inc.ProtoNarutoProperty;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUpgradeEquipmentResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.equip_info","equipInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
      
      public static const PROPERTY_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.property_change","propertyChange",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNarutoProperty);
      
      public static const COST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoUpgradeEquipmentResponse.cost_money","costMoney",4 << 3 | WireType.VARINT);
      
      public static const COST_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoUpgradeEquipmentResponse.cost_item","costItem",5 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoUpgradeEquipmentResponse.cmd_id","cmdId",6 << 3 | WireType.VARINT,UpgradeEquipCommands);
       
      public var ret:ProtoRetInfo;
      
      private var equip_info$field:ProtoEquipInfo;
      
      private var property_change$field:ProtoNarutoProperty;
      
      private var cost_money$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var costItem:Array;
      
      public var cmdId:int;
      
      public function ProtoUpgradeEquipmentResponse()
      {
         this.costItem = [];
         super();
      }
      
      public function clearEquipInfo() : void
      {
         this.equip_info$field = null;
      }
      
      public function get hasEquipInfo() : Boolean
      {
         return this.equip_info$field != null;
      }
      
      public function set equipInfo(param1:ProtoEquipInfo) : void
      {
         this.equip_info$field = param1;
      }
      
      public function get equipInfo() : ProtoEquipInfo
      {
         return this.equip_info$field;
      }
      
      public function clearPropertyChange() : void
      {
         this.property_change$field = null;
      }
      
      public function get hasPropertyChange() : Boolean
      {
         return this.property_change$field != null;
      }
      
      public function set propertyChange(param1:ProtoNarutoProperty) : void
      {
         this.property_change$field = param1;
      }
      
      public function get propertyChange() : ProtoNarutoProperty
      {
         return this.property_change$field;
      }
      
      public function clearCostMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.cost_money$field = new int();
      }
      
      public function get hasCostMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set costMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.cost_money$field = param1;
      }
      
      public function get costMoney() : int
      {
         return this.cost_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasEquipInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equip_info$field);
         }
         if(this.hasPropertyChange)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_change$field);
         }
         if(this.hasCostMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.cost_money$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.costItem.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.costItem[_loc2_]);
            _loc2_++;
         }
         WriteUtils.writeTag(param1,WireType.VARINT,6);
         WriteUtils.write$TYPE_ENUM(param1,this.cmdId);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
