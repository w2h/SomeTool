package serverProto.ninjaProps
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
   
   public final class ProtoNinjaPropsPositionInfo extends Message
   {
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsPositionInfo.open_level","openLevel",1 << 3 | WireType.VARINT);
      
      public static const NINJA_PROPS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsPositionInfo.ninja_props_info","ninjaPropsInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropsInfo);
       
      private var open_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var ninja_props_info$field:serverProto.ninjaProps.ProtoNinjaPropsInfo;
      
      public function ProtoNinjaPropsPositionInfo()
      {
         super();
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.open_level$field = new int();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set openLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : int
      {
         return this.open_level$field;
      }
      
      public function clearNinjaPropsInfo() : void
      {
         this.ninja_props_info$field = null;
      }
      
      public function get hasNinjaPropsInfo() : Boolean
      {
         return this.ninja_props_info$field != null;
      }
      
      public function set ninjaPropsInfo(param1:serverProto.ninjaProps.ProtoNinjaPropsInfo) : void
      {
         this.ninja_props_info$field = param1;
      }
      
      public function get ninjaPropsInfo() : serverProto.ninjaProps.ProtoNinjaPropsInfo
      {
         return this.ninja_props_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.open_level$field);
         }
         if(this.hasNinjaPropsInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_props_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
