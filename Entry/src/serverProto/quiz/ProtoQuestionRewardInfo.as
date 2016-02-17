package serverProto.quiz
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQuestionRewardInfo extends Message
   {
      
      public static const MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionRewardInfo.money","money",1 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.quiz.ProtoQuestionRewardInfo.exp","exp",2 << 3 | WireType.VARINT);
       
      private var money$field:int;
      
      private var hasField$0:uint = 0;
      
      private var exp$field:int;
      
      public function ProtoQuestionRewardInfo()
      {
         super();
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.money$field = new int();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set money(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.money$field = param1;
      }
      
      public function get money() : int
      {
         return this.money$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.exp$field = new int();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set exp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.exp$field = param1;
      }
      
      public function get exp() : int
      {
         return this.exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.money$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.exp$field);
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
