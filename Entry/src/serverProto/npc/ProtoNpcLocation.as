package serverProto.npc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNpcLocation extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoNpcLocation.id","id",1 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.npc.ProtoNpcLocation.type","type",2 << 3 | WireType.VARINT,NpcType);
      
      public static const BORN_POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoNpcLocation.born_point","bornPoint",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.npc.ProtoNpcLocation.status","status",4 << 3 | WireType.VARINT,NpcStatus);
      
      public static const NPC_REAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoNpcLocation.npc_real_id","npcRealId",5 << 3 | WireType.VARINT);
      
      public static const IS_FIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.npc.ProtoNpcLocation.is_fight","isFight",6 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      public var type:int;
      
      public var bornPoint:ProtoPoint;
      
      public var status:int;
      
      private var npc_real_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var is_fight$field:Boolean;
      
      public function ProtoNpcLocation()
      {
         super();
      }
      
      public function clearNpcRealId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.npc_real_id$field = new uint();
      }
      
      public function get hasNpcRealId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set npcRealId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.npc_real_id$field = param1;
      }
      
      public function get npcRealId() : uint
      {
         return this.npc_real_id$field;
      }
      
      public function clearIsFight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.is_fight$field = new Boolean();
      }
      
      public function get hasIsFight() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set isFight(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.is_fight$field = param1;
      }
      
      public function get isFight() : Boolean
      {
         return this.is_fight$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
         WriteUtils.write$TYPE_MESSAGE(param1,this.bornPoint);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_ENUM(param1,this.status);
         if(this.hasNpcRealId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.npc_real_id$field);
         }
         if(this.hasIsFight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.is_fight$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
