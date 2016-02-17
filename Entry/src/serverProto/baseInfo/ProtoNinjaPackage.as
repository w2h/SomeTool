package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaPackage extends Message
   {
      
      public static const NINJA_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPackage.ninja_info","ninjaInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const NINJA_PACKAGE_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaPackage.ninja_package_ulimit","ninjaPackageUlimit",2 << 3 | WireType.VARINT);
      
      public static const NEXT_OPEN_PACKAGE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaPackage.next_open_package_level","nextOpenPackageLevel",3 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
      public var ninjaInfo:Array;
      
      private var ninja_package_ulimit$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var next_open_package_level$field:uint;
      
      public function ProtoNinjaPackage()
      {
         this.ninjaInfo = [];
         super();
      }
      
      public function clearNinjaPackageUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_package_ulimit$field = new uint();
      }
      
      public function get hasNinjaPackageUlimit() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaPackageUlimit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_package_ulimit$field = param1;
      }
      
      public function get ninjaPackageUlimit() : uint
      {
         return this.ninja_package_ulimit$field;
      }
      
      public function clearNextOpenPackageLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.next_open_package_level$field = new uint();
      }
      
      public function get hasNextOpenPackageLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set nextOpenPackageLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.next_open_package_level$field = param1;
      }
      
      public function get nextOpenPackageLevel() : uint
      {
         return this.next_open_package_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasNinjaPackageUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_package_ulimit$field);
         }
         if(this.hasNextOpenPackageLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.next_open_package_level$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
