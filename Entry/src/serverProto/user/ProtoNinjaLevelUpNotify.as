package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLevelUpNotify extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpNotify.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const BEFORE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaLevelUpNotify.before_info","beforeInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLevelUpInfo);
      
      public static const AFTER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaLevelUpNotify.after_info","afterInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLevelUpInfo);
       
      public var ninjaId:int;
      
      private var before_info$field:serverProto.user.ProtoNinjaLevelUpInfo;
      
      private var after_info$field:serverProto.user.ProtoNinjaLevelUpInfo;
      
      public function ProtoNinjaLevelUpNotify()
      {
         super();
      }
      
      public function clearBeforeInfo() : void
      {
         this.before_info$field = null;
      }
      
      public function get hasBeforeInfo() : Boolean
      {
         return this.before_info$field != null;
      }
      
      public function set beforeInfo(param1:serverProto.user.ProtoNinjaLevelUpInfo) : void
      {
         this.before_info$field = param1;
      }
      
      public function get beforeInfo() : serverProto.user.ProtoNinjaLevelUpInfo
      {
         return this.before_info$field;
      }
      
      public function clearAfterInfo() : void
      {
         this.after_info$field = null;
      }
      
      public function get hasAfterInfo() : Boolean
      {
         return this.after_info$field != null;
      }
      
      public function set afterInfo(param1:serverProto.user.ProtoNinjaLevelUpInfo) : void
      {
         this.after_info$field = param1;
      }
      
      public function get afterInfo() : serverProto.user.ProtoNinjaLevelUpInfo
      {
         return this.after_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.ninjaId);
         if(this.hasBeforeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.before_info$field);
         }
         if(this.hasAfterInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.after_info$field);
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
