package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildRefuseAllApplyReq extends Message
   {
      
      public static const YES_OR_NO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildRefuseAllApplyReq.yes_or_no","yesOrNo",2 << 3 | WireType.VARINT);
       
      private var yes_or_no$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGuildRefuseAllApplyReq()
      {
         super();
      }
      
      public function clearYesOrNo() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.yes_or_no$field = new uint();
      }
      
      public function get hasYesOrNo() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set yesOrNo(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.yes_or_no$field = param1;
      }
      
      public function get yesOrNo() : uint
      {
         return this.yes_or_no$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasYesOrNo)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.yes_or_no$field);
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
