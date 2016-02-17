package serverProto.ninjaProps
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOperateNinjaPropsResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoOperateNinjaPropsResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_PROPS_POSITON:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoOperateNinjaPropsResponse.ninja_props_positon","ninjaPropsPositon",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropsPositionInfo);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_props_positon$field:serverProto.ninjaProps.ProtoNinjaPropsPositionInfo;
      
      public function ProtoOperateNinjaPropsResponse()
      {
         super();
      }
      
      public function clearNinjaPropsPositon() : void
      {
         this.ninja_props_positon$field = null;
      }
      
      public function get hasNinjaPropsPositon() : Boolean
      {
         return this.ninja_props_positon$field != null;
      }
      
      public function set ninjaPropsPositon(param1:serverProto.ninjaProps.ProtoNinjaPropsPositionInfo) : void
      {
         this.ninja_props_positon$field = param1;
      }
      
      public function get ninjaPropsPositon() : serverProto.ninjaProps.ProtoNinjaPropsPositionInfo
      {
         return this.ninja_props_positon$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaPropsPositon)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_props_positon$field);
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
