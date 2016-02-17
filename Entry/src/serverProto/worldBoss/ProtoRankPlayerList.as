package serverProto.worldBoss
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRankPlayerList extends Message
   {
      
      public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoRankPlayerList.player","player",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.worldBoss.ProtoRankPlayerList.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TOTAL_DAMAGE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoRankPlayerList.total_damage","totalDamage",3 << 3 | WireType.VARINT);
      
      public static const RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoRankPlayerList.rank","rank",4 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoRankPlayerList.vip_level","vipLevel",5 << 3 | WireType.VARINT);
      
      public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoRankPlayerList.diamond_info","diamondInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
       
      public var player:ProtoPlayerKey;
      
      public var name:String;
      
      public var totalDamage:int;
      
      public var rank:int;
      
      private var vip_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var diamond_info$field:ProtoDiamondInfo;
      
      public function ProtoRankPlayerList()
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
      
      public function clearDiamondInfo() : void
      {
         this.diamond_info$field = null;
      }
      
      public function get hasDiamondInfo() : Boolean
      {
         return this.diamond_info$field != null;
      }
      
      public function set diamondInfo(param1:ProtoDiamondInfo) : void
      {
         this.diamond_info$field = param1;
      }
      
      public function get diamondInfo() : ProtoDiamondInfo
      {
         return this.diamond_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.player);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_STRING(param1,this.name);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.totalDamage);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.rank);
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.vip_level$field);
         }
         if(this.hasDiamondInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.diamond_info$field);
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
