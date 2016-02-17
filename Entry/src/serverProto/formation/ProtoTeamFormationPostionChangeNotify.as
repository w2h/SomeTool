package serverProto.formation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamFormationPostionChangeNotify extends Message
   {
      
      public static const POSTION_A:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formation.ProtoTeamFormationPostionChangeNotify.postion_a","postionA",1 << 3 | WireType.VARINT);
      
      public static const POSTION_B:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.formation.ProtoTeamFormationPostionChangeNotify.postion_b","postionB",2 << 3 | WireType.VARINT);
       
      public var postionA:int;
      
      public var postionB:int;
      
      public function ProtoTeamFormationPostionChangeNotify()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.postionA);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.postionB);
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
