package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetDungeonRaidsInfoRequest extends Message
   {
      
      public static const CLEAR_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoGetDungeonRaidsInfoRequest.clear_flag","clearFlag",1 << 3 | WireType.VARINT);
       
      private var clear_flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGetDungeonRaidsInfoRequest()
      {
         super();
      }
      
      public function clearClearFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.clear_flag$field = new uint();
      }
      
      public function get hasClearFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set clearFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.clear_flag$field = param1;
      }
      
      public function get clearFlag() : uint
      {
         return this.clear_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasClearFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.clear_flag$field);
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
