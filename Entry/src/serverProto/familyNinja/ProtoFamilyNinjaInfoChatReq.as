package serverProto.familyNinja
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaInfoChatReq extends Message
   {
      
      public static const CLASS_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.familyNinja.ProtoFamilyNinjaInfoChatReq.class_id","classId",1 << 3 | WireType.VARINT);
      
      public static const CHOOSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.familyNinja.ProtoFamilyNinjaInfoChatReq.choose","choose",2 << 3 | WireType.VARINT);
       
      public var classId:int;
      
      private var choose$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoFamilyNinjaInfoChatReq()
      {
         super();
      }
      
      public function clearChoose() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.choose$field = new int();
      }
      
      public function get hasChoose() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set choose(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.choose$field = param1;
      }
      
      public function get choose() : int
      {
         return this.choose$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.classId);
         if(this.hasChoose)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.choose$field);
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
