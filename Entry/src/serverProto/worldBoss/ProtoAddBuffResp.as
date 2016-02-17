package serverProto.worldBoss
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoAddBuffResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoAddBuffResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const DARK_DIVISION_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoAddBuffResp.dark_division_support","darkDivisionSupport",2 << 3 | WireType.VARINT);
      
      public static const HIKAGE_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoAddBuffResp.hikage_support","hikageSupport",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var dark_division_support$field:int;
      
      private var hasField$0:uint = 0;
      
      private var hikage_support$field:int;
      
      public function ProtoAddBuffResp()
      {
         super();
      }
      
      public function clearDarkDivisionSupport() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.dark_division_support$field = new int();
      }
      
      public function get hasDarkDivisionSupport() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set darkDivisionSupport(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.dark_division_support$field = param1;
      }
      
      public function get darkDivisionSupport() : int
      {
         return this.dark_division_support$field;
      }
      
      public function clearHikageSupport() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.hikage_support$field = new int();
      }
      
      public function get hasHikageSupport() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set hikageSupport(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.hikage_support$field = param1;
      }
      
      public function get hikageSupport() : int
      {
         return this.hikage_support$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasDarkDivisionSupport)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.dark_division_support$field);
         }
         if(this.hasHikageSupport)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.hikage_support$field);
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
