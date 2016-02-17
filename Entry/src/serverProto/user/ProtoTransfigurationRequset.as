package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTransfigurationRequset extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoTransfigurationRequset.type","type",1 << 3 | WireType.VARINT,ProtoTransfigurationType);
      
      public static const OWN_NINJA_SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationRequset.own_ninja_seq","ownNinjaSeq",2 << 3 | WireType.VARINT);
      
      public static const AUTO_BUY:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoTransfigurationRequset.auto_buy","autoBuy",3 << 3 | WireType.VARINT);
       
      public var type:int;
      
      private var own_ninja_seq$field:int;
      
      private var hasField$0:uint = 0;
      
      private var auto_buy$field:Boolean;
      
      public function ProtoTransfigurationRequset()
      {
         super();
      }
      
      public function clearOwnNinjaSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.own_ninja_seq$field = new int();
      }
      
      public function get hasOwnNinjaSeq() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ownNinjaSeq(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.own_ninja_seq$field = param1;
      }
      
      public function get ownNinjaSeq() : int
      {
         return this.own_ninja_seq$field;
      }
      
      public function clearAutoBuy() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.auto_buy$field = new Boolean();
      }
      
      public function get hasAutoBuy() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set autoBuy(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.auto_buy$field = param1;
      }
      
      public function get autoBuy() : Boolean
      {
         return this.auto_buy$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasOwnNinjaSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.own_ninja_seq$field);
         }
         if(this.hasAutoBuy)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_buy$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
