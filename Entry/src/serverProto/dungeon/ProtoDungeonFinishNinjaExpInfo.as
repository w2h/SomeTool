package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDungeonFinishNinjaExpInfo extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.ninja_seq","ninjaSeq",2 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.exp","exp",3 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.level","level",4 << 3 | WireType.VARINT);
      
      public static const ADD_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.add_exp","addExp",5 << 3 | WireType.VARINT);
      
      public static const VIP_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.vip_exp","vipExp",6 << 3 | WireType.VARINT);
      
      public static const AFTER_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.after_exp","afterExp",7 << 3 | WireType.VARINT);
      
      public static const AFTER_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo.after_level","afterLevel",8 << 3 | WireType.VARINT);
       
      public var ninjaId:int;
      
      public var ninjaSeq:int;
      
      public var exp:int;
      
      public var level:int;
      
      public var addExp:int;
      
      public var vipExp:int;
      
      public var afterExp:int;
      
      public var afterLevel:int;
      
      public function ProtoDungeonFinishNinjaExpInfo()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.ninjaId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.ninjaSeq);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.exp);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.level);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_INT32(param1,this.addExp);
         WriteUtils.writeTag(param1,WireType.VARINT,6);
         WriteUtils.write$TYPE_INT32(param1,this.vipExp);
         WriteUtils.writeTag(param1,WireType.VARINT,7);
         WriteUtils.write$TYPE_INT32(param1,this.afterExp);
         WriteUtils.writeTag(param1,WireType.VARINT,8);
         WriteUtils.write$TYPE_INT32(param1,this.afterLevel);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
