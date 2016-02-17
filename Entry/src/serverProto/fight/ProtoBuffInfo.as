package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBuffInfo extends Message
   {
      
      public static const BUFF_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffInfo.buff_id","buffId",1 << 3 | WireType.VARINT);
      
      public static const BUFF_GROUP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffInfo.buff_group","buffGroup",2 << 3 | WireType.VARINT);
      
      public static const BUFF_OVERLAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffInfo.buff_overlay","buffOverlay",3 << 3 | WireType.VARINT);
      
      public static const BUFF_ARG1:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoBuffInfo.buff_arg1","buffArg1",8 << 3 | WireType.VARINT);
      
      public static const BUFF_ARG2:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoBuffInfo.buff_arg2","buffArg2",9 << 3 | WireType.VARINT);
       
      public var buffId:uint;
      
      private var buff_group$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var buff_overlay$field:uint;
      
      private var buff_arg1$field:int;
      
      private var buff_arg2$field:int;
      
      public function ProtoBuffInfo()
      {
         super();
      }
      
      public function clearBuffGroup() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.buff_group$field = new uint();
      }
      
      public function get hasBuffGroup() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set buffGroup(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.buff_group$field = param1;
      }
      
      public function get buffGroup() : uint
      {
         return this.buff_group$field;
      }
      
      public function clearBuffOverlay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.buff_overlay$field = new uint();
      }
      
      public function get hasBuffOverlay() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set buffOverlay(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.buff_overlay$field = param1;
      }
      
      public function get buffOverlay() : uint
      {
         return this.buff_overlay$field;
      }
      
      public function clearBuffArg1() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.buff_arg1$field = new int();
      }
      
      public function get hasBuffArg1() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set buffArg1(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.buff_arg1$field = param1;
      }
      
      public function get buffArg1() : int
      {
         return this.buff_arg1$field;
      }
      
      public function clearBuffArg2() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.buff_arg2$field = new int();
      }
      
      public function get hasBuffArg2() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set buffArg2(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.buff_arg2$field = param1;
      }
      
      public function get buffArg2() : int
      {
         return this.buff_arg2$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.buffId);
         if(this.hasBuffGroup)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.buff_group$field);
         }
         if(this.hasBuffOverlay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.buff_overlay$field);
         }
         if(this.hasBuffArg1)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.buff_arg1$field);
         }
         if(this.hasBuffArg2)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.buff_arg2$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
