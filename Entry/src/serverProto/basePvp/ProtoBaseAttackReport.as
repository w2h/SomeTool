package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseAttackReport extends Message
   {
      
      public static const BASE_MAIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.base_main","baseMain",1 << 3 | WireType.VARINT);
      
      public static const BASE_ROSHAN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.base_roshan","baseRoshan",2 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.base_money","baseMoney",3 << 3 | WireType.VARINT);
      
      public static const ROB_MONEY_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.rob_money_count","robMoneyCount",4 << 3 | WireType.VARINT);
      
      public static const ROB_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.rob_power","robPower",5 << 3 | WireType.VARINT);
      
      public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseAttackReport.scene_id","sceneId",6 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseAttackReport.location","location",7 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      private var base_main$field:int;
      
      private var hasField$0:uint = 0;
      
      private var base_roshan$field:int;
      
      private var base_money$field:int;
      
      private var rob_money_count$field:int;
      
      private var rob_power$field:int;
      
      private var scene_id$field:int;
      
      private var location$field:ProtoPoint;
      
      public function ProtoBaseAttackReport()
      {
         super();
      }
      
      public function clearBaseMain() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.base_main$field = new int();
      }
      
      public function get hasBaseMain() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set baseMain(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.base_main$field = param1;
      }
      
      public function get baseMain() : int
      {
         return this.base_main$field;
      }
      
      public function clearBaseRoshan() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.base_roshan$field = new int();
      }
      
      public function get hasBaseRoshan() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set baseRoshan(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.base_roshan$field = param1;
      }
      
      public function get baseRoshan() : int
      {
         return this.base_roshan$field;
      }
      
      public function clearBaseMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.base_money$field = new int();
      }
      
      public function get hasBaseMoney() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set baseMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.base_money$field = param1;
      }
      
      public function get baseMoney() : int
      {
         return this.base_money$field;
      }
      
      public function clearRobMoneyCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.rob_money_count$field = new int();
      }
      
      public function get hasRobMoneyCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set robMoneyCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.rob_money_count$field = param1;
      }
      
      public function get robMoneyCount() : int
      {
         return this.rob_money_count$field;
      }
      
      public function clearRobPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.rob_power$field = new int();
      }
      
      public function get hasRobPower() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set robPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.rob_power$field = param1;
      }
      
      public function get robPower() : int
      {
         return this.rob_power$field;
      }
      
      public function clearSceneId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.scene_id$field = new int();
      }
      
      public function get hasSceneId() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set sceneId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.scene_id$field = param1;
      }
      
      public function get sceneId() : int
      {
         return this.scene_id$field;
      }
      
      public function clearLocation() : void
      {
         this.location$field = null;
      }
      
      public function get hasLocation() : Boolean
      {
         return this.location$field != null;
      }
      
      public function set location(param1:ProtoPoint) : void
      {
         this.location$field = param1;
      }
      
      public function get location() : ProtoPoint
      {
         return this.location$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBaseMain)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.base_main$field);
         }
         if(this.hasBaseRoshan)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.base_roshan$field);
         }
         if(this.hasBaseMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.base_money$field);
         }
         if(this.hasRobMoneyCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.rob_money_count$field);
         }
         if(this.hasRobPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.rob_power$field);
         }
         if(this.hasSceneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.scene_id$field);
         }
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.location$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
