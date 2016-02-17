package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseAllowAttackResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseAllowAttackResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BUILDING:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.building","building",2 << 3 | WireType.VARINT);
      
      public static const CAN_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.can_attack","canAttack",3 << 3 | WireType.VARINT);
      
      public static const LAST_BUILDING:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.last_building","lastBuilding",4 << 3 | WireType.VARINT);
      
      public static const ROBBED_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAllowAttackResponse.robbed_money","robbedMoney",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      public var building:int;
      
      public var canAttack:int;
      
      private var last_building$field:int;
      
      private var hasField$0:uint = 0;
      
      private var robbed_money$field:int;
      
      public function ProtoBaseAllowAttackResponse()
      {
         super();
      }
      
      public function clearLastBuilding() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.last_building$field = new int();
      }
      
      public function get hasLastBuilding() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set lastBuilding(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.last_building$field = param1;
      }
      
      public function get lastBuilding() : int
      {
         return this.last_building$field;
      }
      
      public function clearRobbedMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.robbed_money$field = new int();
      }
      
      public function get hasRobbedMoney() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set robbedMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.robbed_money$field = param1;
      }
      
      public function get robbedMoney() : int
      {
         return this.robbed_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.building);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.canAttack);
         if(this.hasLastBuilding)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.last_building$field);
         }
         if(this.hasRobbedMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.robbed_money$field);
         }
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
