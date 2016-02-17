package serverProto.sceneEscort
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSceneEscortAutoRobRequest extends Message
   {
      
      public static const AUTO:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.sceneEscort.ProtoSceneEscortAutoRobRequest.auto","auto",1 << 3 | WireType.VARINT);
       
      private var auto$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSceneEscortAutoRobRequest()
      {
         super();
      }
      
      public function clearAuto() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.auto$field = new Boolean();
      }
      
      public function get hasAuto() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set auto(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.auto$field = param1;
      }
      
      public function get auto() : Boolean
      {
         return this.auto$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasAuto)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.auto$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
