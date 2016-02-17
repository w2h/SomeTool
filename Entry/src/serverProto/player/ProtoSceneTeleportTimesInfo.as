package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerVipLevel;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSceneTeleportTimesInfo extends Message
   {
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoSceneTeleportTimesInfo.vip_level","vipLevel",1 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const VIP_FREE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoSceneTeleportTimesInfo.vip_free_times","vipFreeTimes",2 << 3 | WireType.VARINT);
      
      public static const TELEPORT_ITEM_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.player.ProtoSceneTeleportTimesInfo.teleport_item_count","teleportItemCount",3 << 3 | WireType.VARINT);
       
      private var vip_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var vip_free_times$field:int;
      
      private var teleport_item_count$field:int;
      
      public function ProtoSceneTeleportTimesInfo()
      {
         super();
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearVipFreeTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.vip_free_times$field = new int();
      }
      
      public function get hasVipFreeTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set vipFreeTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.vip_free_times$field = param1;
      }
      
      public function get vipFreeTimes() : int
      {
         return this.vip_free_times$field;
      }
      
      public function clearTeleportItemCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.teleport_item_count$field = new int();
      }
      
      public function get hasTeleportItemCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set teleportItemCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.teleport_item_count$field = param1;
      }
      
      public function get teleportItemCount() : int
      {
         return this.teleport_item_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasVipFreeTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.vip_free_times$field);
         }
         if(this.hasTeleportItemCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.teleport_item_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
