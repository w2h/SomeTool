package serverProto.bag
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
   
   public final class ProtoBagInfo extends Message
   {
      
      public static const ITEM_CELL_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagInfo.item_cell_num","itemCellNum",1 << 3 | WireType.VARINT);
      
      public static const ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.item","item",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBagItemInfo);
      
      public static const TASK_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.task_item","taskItem",3 << 3 | WireType.LENGTH_DELIMITED,ProtoTaskItemInfo);
      
      public static const EQUIP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.equip","equip",4 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
      
      public static const CARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.card","card",5 << 3 | WireType.LENGTH_DELIMITED,ProtoBagCardInfo);
      
      public static const SUMMOM_MONSTER_CARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.summom_monster_card","summomMonsterCard",6 << 3 | WireType.LENGTH_DELIMITED,ProtoBagSummonMonsterCardInfo);
      
      public static const RUNE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.rune","rune",7 << 3 | WireType.LENGTH_DELIMITED,ProtoBagRuneInfo);
      
      public static const TREASURE_MAP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.treasure_map","treasureMap",9 << 3 | WireType.LENGTH_DELIMITED,ProtoBagTreasureMapInfo);
      
      public static const STONE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagInfo.stone","stone",10 << 3 | WireType.LENGTH_DELIMITED,ProtoBagStoneInfo);
       
      public var itemCellNum:uint;
      
      [ArrayElementType("serverProto.bag.ProtoBagItemInfo")]
      public var item:Array;
      
      [ArrayElementType("serverProto.bag.ProtoTaskItemInfo")]
      public var taskItem:Array;
      
      [ArrayElementType("serverProto.bag.ProtoEquipInfo")]
      public var equip:Array;
      
      [ArrayElementType("serverProto.bag.ProtoBagCardInfo")]
      public var card:Array;
      
      [ArrayElementType("serverProto.bag.ProtoBagSummonMonsterCardInfo")]
      public var summomMonsterCard:Array;
      
      [ArrayElementType("serverProto.bag.ProtoBagRuneInfo")]
      public var rune:Array;
      
      [ArrayElementType("serverProto.bag.ProtoBagTreasureMapInfo")]
      public var treasureMap:Array;
      
      [ArrayElementType("serverProto.bag.ProtoBagStoneInfo")]
      public var stone:Array;
      
      public function ProtoBagInfo()
      {
         this.item = [];
         this.taskItem = [];
         this.equip = [];
         this.card = [];
         this.summomMonsterCard = [];
         this.rune = [];
         this.treasureMap = [];
         this.stone = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc10_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.itemCellNum);
         var _loc2_:uint = 0;
         while(_loc2_ < this.item.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.item[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.taskItem.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.taskItem[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.equip.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equip[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.card.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.card[_loc5_]);
            _loc5_++;
         }
         var _loc6_:uint = 0;
         while(_loc6_ < this.summomMonsterCard.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.summomMonsterCard[_loc6_]);
            _loc6_++;
         }
         var _loc7_:uint = 0;
         while(_loc7_ < this.rune.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rune[_loc7_]);
            _loc7_++;
         }
         var _loc8_:uint = 0;
         while(_loc8_ < this.treasureMap.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.treasureMap[_loc8_]);
            _loc8_++;
         }
         var _loc9_:uint = 0;
         while(_loc9_ < this.stone.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stone[_loc9_]);
            _loc9_++;
         }
         for(_loc10_ in this)
         {
            super.writeUnknown(param1,_loc10_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
