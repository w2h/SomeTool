package serverProto.huntlife
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChakraItemInfo extends Message
   {
      
      public static const GRADE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraItemInfo.grade","grade",1 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraItemInfo.type","type",2 << 3 | WireType.VARINT);
      
      public static const ATTR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraItemInfo.attr","attr",3 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraItemInfo.exp","exp",4 << 3 | WireType.VARINT);
      
      public static const LEVELUP_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraItemInfo.levelup_exp","levelupExp",5 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraItemInfo.level","level",6 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraItemInfo.state","state",7 << 3 | WireType.VARINT);
       
      public var grade:uint;
      
      public var type:uint;
      
      public var attr:uint;
      
      public var exp:uint;
      
      public var levelupExp:uint;
      
      private var level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var state$field:uint;
      
      public function ProtoChakraItemInfo()
      {
         super();
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.state$field = new uint();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set state(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.state$field = param1;
      }
      
      public function get state() : uint
      {
         return this.state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.grade);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.type);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.attr);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.exp);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_UINT32(param1,this.levelupExp);
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.state$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
