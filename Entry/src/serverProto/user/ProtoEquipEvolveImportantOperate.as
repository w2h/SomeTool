package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNinjaKey;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipEvolveImportantOperate extends Message
   {
      
      public static const EQUIP_SEQ:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.user.ProtoEquipEvolveImportantOperate.equip_seq","equipSeq",1 << 3 | WireType.VARINT);
      
      public static const EQUIP_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoEquipEvolveImportantOperate.equip_id","equipId",2 << 3 | WireType.VARINT);
      
      public static const NINJA_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoEquipEvolveImportantOperate.ninja_key","ninjaKey",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaKey);
       
      public var equipSeq:UInt64;
      
      public var equipId:int;
      
      private var ninja_key$field:ProtoNinjaKey;
      
      public function ProtoEquipEvolveImportantOperate()
      {
         super();
      }
      
      public function clearNinjaKey() : void
      {
         this.ninja_key$field = null;
      }
      
      public function get hasNinjaKey() : Boolean
      {
         return this.ninja_key$field != null;
      }
      
      public function set ninjaKey(param1:ProtoNinjaKey) : void
      {
         this.ninja_key$field = param1;
      }
      
      public function get ninjaKey() : ProtoNinjaKey
      {
         return this.ninja_key$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT64(param1,this.equipSeq);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.equipId);
         if(this.hasNinjaKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_key$field);
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
