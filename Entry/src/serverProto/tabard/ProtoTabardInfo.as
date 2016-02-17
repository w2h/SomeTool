package serverProto.tabard
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTabardInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.level","level",2 << 3 | WireType.VARINT);
      
      public static const CURR_STEP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.curr_step","currStep",3 << 3 | WireType.VARINT);
      
      public static const SHOW_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardInfo.show_flag","showFlag",4 << 3 | WireType.VARINT);
      
      public static const PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tabard.ProtoTabardInfo.property_info","propertyInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoTabardPropertyInfo);
       
      private var id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var level$field:int;
      
      private var curr_step$field:int;
      
      private var show_flag$field:int;
      
      private var property_info$field:serverProto.tabard.ProtoTabardPropertyInfo;
      
      public function ProtoTabardInfo()
      {
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new int();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : int
      {
         return this.id$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearCurrStep() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.curr_step$field = new int();
      }
      
      public function get hasCurrStep() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set currStep(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.curr_step$field = param1;
      }
      
      public function get currStep() : int
      {
         return this.curr_step$field;
      }
      
      public function clearShowFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.show_flag$field = new int();
      }
      
      public function get hasShowFlag() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set showFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.show_flag$field = param1;
      }
      
      public function get showFlag() : int
      {
         return this.show_flag$field;
      }
      
      public function clearPropertyInfo() : void
      {
         this.property_info$field = null;
      }
      
      public function get hasPropertyInfo() : Boolean
      {
         return this.property_info$field != null;
      }
      
      public function set propertyInfo(param1:serverProto.tabard.ProtoTabardPropertyInfo) : void
      {
         this.property_info$field = param1;
      }
      
      public function get propertyInfo() : serverProto.tabard.ProtoTabardPropertyInfo
      {
         return this.property_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.id$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
         }
         if(this.hasCurrStep)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.curr_step$field);
         }
         if(this.hasShowFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.show_flag$field);
         }
         if(this.hasPropertyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_info$field);
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
