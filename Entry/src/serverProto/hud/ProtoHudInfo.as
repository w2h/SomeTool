package serverProto.hud
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHudInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoHudInfo.type","type",1 << 3 | WireType.VARINT,ProtoHudType);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.hud.ProtoHudInfo.status","status",2 << 3 | WireType.VARINT,ProtoHudStatusType);
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.hud.ProtoHudInfo.open_level","openLevel",3 << 3 | WireType.VARINT);
       
      private var type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var status$field:int;
      
      private var open_level$field:int;
      
      public function ProtoHudInfo()
      {
         super();
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.type$field = new int();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set type(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.type$field = param1;
      }
      
      public function get type() : int
      {
         return this.type$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.status$field = new int();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set status(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.status$field = param1;
      }
      
      public function get status() : int
      {
         return this.status$field;
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.open_level$field = new int();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set openLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : int
      {
         return this.open_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.type$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.status$field);
         }
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.open_level$field);
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
