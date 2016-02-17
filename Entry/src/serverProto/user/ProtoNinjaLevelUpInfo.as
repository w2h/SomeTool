package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNarutoProperty;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLevelUpInfo extends Message
   {
      
      public static const PROTPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaLevelUpInfo.protperty","protperty",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNarutoProperty);
      
      public static const LEADSHIP_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpInfo.leadship_ulimit","leadshipUlimit",2 << 3 | WireType.VARINT);
      
      public static const PACKAGE_NINJA_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpInfo.package_ninja_ulimit","packageNinjaUlimit",3 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaLevelUpInfo.level","level",4 << 3 | WireType.VARINT);
       
      public var protperty:ProtoNarutoProperty;
      
      private var leadship_ulimit$field:int;
      
      private var hasField$0:uint = 0;
      
      private var package_ninja_ulimit$field:int;
      
      private var level$field:int;
      
      public function ProtoNinjaLevelUpInfo()
      {
         super();
      }
      
      public function clearLeadshipUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.leadship_ulimit$field = new int();
      }
      
      public function get hasLeadshipUlimit() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set leadshipUlimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.leadship_ulimit$field = param1;
      }
      
      public function get leadshipUlimit() : int
      {
         return this.leadship_ulimit$field;
      }
      
      public function clearPackageNinjaUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.package_ninja_ulimit$field = new int();
      }
      
      public function get hasPackageNinjaUlimit() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set packageNinjaUlimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.package_ninja_ulimit$field = param1;
      }
      
      public function get packageNinjaUlimit() : int
      {
         return this.package_ninja_ulimit$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.protperty);
         if(this.hasLeadshipUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.leadship_ulimit$field);
         }
         if(this.hasPackageNinjaUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.package_ninja_ulimit$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
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
