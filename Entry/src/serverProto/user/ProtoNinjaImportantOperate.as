package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoNinjaImportantOperate extends Message
   {
      
      public static const NINJA_CARD_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.ninja_card_id","ninjaCardId",1 << 3 | WireType.VARINT);
      
      public static const STRENGTH_NINJA_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.strength_ninja_id","strengthNinjaId",2 << 3 | WireType.VARINT);
      
      public static const AWAKE_NINJA_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.awake_ninja_id","awakeNinjaId",3 << 3 | WireType.VARINT);
      
      public static const UPGRADE_STAR_NINJA_ID:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaImportantOperate.upgrade_star_ninja_id","upgradeStarNinjaId",4 << 3 | WireType.VARINT);
       
      [ArrayElementType("int")]
      public var ninjaCardId:Array;
      
      [ArrayElementType("int")]
      public var strengthNinjaId:Array;
      
      [ArrayElementType("int")]
      public var awakeNinjaId:Array;
      
      [ArrayElementType("int")]
      public var upgradeStarNinjaId:Array;
      
      public function ProtoNinjaImportantOperate()
      {
         this.ninjaCardId = [];
         this.strengthNinjaId = [];
         this.awakeNinjaId = [];
         this.upgradeStarNinjaId = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc6_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaCardId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.ninjaCardId[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.strengthNinjaId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.strengthNinjaId[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.awakeNinjaId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.awakeNinjaId[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.upgradeStarNinjaId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.upgradeStarNinjaId[_loc5_]);
            _loc5_++;
         }
         for(_loc6_ in this)
         {
            super.writeUnknown(param1,_loc6_);
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
