package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHelpWaterInRecordsRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterInRecordsRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CAN_ONE_KEY_WATER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoHelpWaterInRecordsRsp.can_one_key_water","canOneKeyWater",2 << 3 | WireType.VARINT);
      
      public static const HELP_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoHelpWaterInRecordsRsp.help_record","helpRecord",3 << 3 | WireType.LENGTH_DELIMITED,ProtoFriendHelpRecord);
      
      public static const WISH_TREE_LEVELUP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoHelpWaterInRecordsRsp.wish_tree_levelup","wishTreeLevelup",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var can_one_key_water$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.family.ProtoFriendHelpRecord")]
      public var helpRecord:Array;
      
      private var wish_tree_levelup$field:int;
      
      public function ProtoHelpWaterInRecordsRsp()
      {
         this.helpRecord = [];
         super();
      }
      
      public function clearCanOneKeyWater() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.can_one_key_water$field = new int();
      }
      
      public function get hasCanOneKeyWater() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set canOneKeyWater(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.can_one_key_water$field = param1;
      }
      
      public function get canOneKeyWater() : int
      {
         return this.can_one_key_water$field;
      }
      
      public function clearWishTreeLevelup() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.wish_tree_levelup$field = new int();
      }
      
      public function get hasWishTreeLevelup() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set wishTreeLevelup(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.wish_tree_levelup$field = param1;
      }
      
      public function get wishTreeLevelup() : int
      {
         return this.wish_tree_levelup$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasCanOneKeyWater)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.can_one_key_water$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.helpRecord.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.helpRecord[_loc2_]);
            _loc2_++;
         }
         if(this.hasWishTreeLevelup)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.wish_tree_levelup$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
