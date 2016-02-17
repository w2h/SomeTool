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
   
   public final class ProtoNinjaPropertyComposeInfo extends Message
   {
      
      public static const ORIGINAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaPropertyComposeInfo.original","original",1 << 3 | WireType.VARINT);
      
      public static const OTHER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaPropertyComposeInfo.other","other",2 << 3 | WireType.VARINT);
      
      public static const VIP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaPropertyComposeInfo.vip","vip",3 << 3 | WireType.VARINT);
       
      private var original$field:int;
      
      private var hasField$0:uint = 0;
      
      private var other$field:int;
      
      private var vip$field:int;
      
      public function ProtoNinjaPropertyComposeInfo()
      {
         super();
      }
      
      public function clearOriginal() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.original$field = new int();
      }
      
      public function get hasOriginal() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set original(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.original$field = param1;
      }
      
      public function get original() : int
      {
         return this.original$field;
      }
      
      public function clearOther() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.other$field = new int();
      }
      
      public function get hasOther() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set other(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.other$field = param1;
      }
      
      public function get other() : int
      {
         return this.other$field;
      }
      
      public function clearVip() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.vip$field = new int();
      }
      
      public function get hasVip() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set vip(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.vip$field = param1;
      }
      
      public function get vip() : int
      {
         return this.vip$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasOriginal)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.original$field);
         }
         if(this.hasOther)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.other$field);
         }
         if(this.hasVip)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.vip$field);
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
