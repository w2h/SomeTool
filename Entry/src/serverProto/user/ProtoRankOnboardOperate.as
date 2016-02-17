package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRankOnboardOperate extends Message
   {
      
      public static const RANK_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoRankOnboardOperate.rank_type","rankType",1 << 3 | WireType.VARINT);
      
      public static const CAREER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoRankOnboardOperate.career","career",2 << 3 | WireType.VARINT);
       
      private var rank_type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var career$field:int;
      
      public function ProtoRankOnboardOperate()
      {
         super();
      }
      
      public function clearRankType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rank_type$field = new int();
      }
      
      public function get hasRankType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rankType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rank_type$field = param1;
      }
      
      public function get rankType() : int
      {
         return this.rank_type$field;
      }
      
      public function clearCareer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.career$field = new int();
      }
      
      public function get hasCareer() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set career(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.career$field = param1;
      }
      
      public function get career() : int
      {
         return this.career$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRankType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.rank_type$field);
         }
         if(this.hasCareer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.career$field);
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
