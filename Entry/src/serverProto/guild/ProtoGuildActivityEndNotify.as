package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildActivityEndNotify extends Message
   {
      
      public static const RESULT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityEndNotify.result","result",1 << 3 | WireType.VARINT);
      
      public static const BENEFIT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildActivityEndNotify.benefit","benefit",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildActivityBenefit);
      
      public static const LOSS_RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityEndNotify.loss_rate","lossRate",3 << 3 | WireType.VARINT);
      
      public static const OVERFLOW_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildActivityEndNotify.overflow_times","overflowTimes",4 << 3 | WireType.VARINT);
       
      public var result:int;
      
      private var benefit$field:serverProto.guild.ProtoGuildActivityBenefit;
      
      private var loss_rate$field:int;
      
      private var hasField$0:uint = 0;
      
      private var overflow_times$field:int;
      
      public function ProtoGuildActivityEndNotify()
      {
         super();
      }
      
      public function clearBenefit() : void
      {
         this.benefit$field = null;
      }
      
      public function get hasBenefit() : Boolean
      {
         return this.benefit$field != null;
      }
      
      public function set benefit(param1:serverProto.guild.ProtoGuildActivityBenefit) : void
      {
         this.benefit$field = param1;
      }
      
      public function get benefit() : serverProto.guild.ProtoGuildActivityBenefit
      {
         return this.benefit$field;
      }
      
      public function clearLossRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.loss_rate$field = new int();
      }
      
      public function get hasLossRate() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set lossRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.loss_rate$field = param1;
      }
      
      public function get lossRate() : int
      {
         return this.loss_rate$field;
      }
      
      public function clearOverflowTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.overflow_times$field = new int();
      }
      
      public function get hasOverflowTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set overflowTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.overflow_times$field = param1;
      }
      
      public function get overflowTimes() : int
      {
         return this.overflow_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.result);
         if(this.hasBenefit)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.benefit$field);
         }
         if(this.hasLossRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.loss_rate$field);
         }
         if(this.hasOverflowTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.overflow_times$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
