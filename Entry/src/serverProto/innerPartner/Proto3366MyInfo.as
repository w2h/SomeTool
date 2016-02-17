package serverProto.innerPartner
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class Proto3366MyInfo extends Message
   {
      
      public static const GROW_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.grow_value","growValue",2 << 3 | WireType.VARINT);
      
      public static const NEXT_GROWVALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.next_growvalue","nextGrowvalue",3 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.level","level",4 << 3 | WireType.VARINT);
      
      public static const ICON_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.icon_status","iconStatus",5 << 3 | WireType.VARINT);
      
      public static const ICON_GROWVALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.Proto3366MyInfo.icon_growvalue","iconGrowvalue",6 << 3 | WireType.VARINT);
       
      private var grow_value$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var next_growvalue$field:uint;
      
      private var level$field:uint;
      
      private var icon_status$field:uint;
      
      private var icon_growvalue$field:uint;
      
      public function Proto3366MyInfo()
      {
         super();
      }
      
      public function clearGrowValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.grow_value$field = new uint();
      }
      
      public function get hasGrowValue() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set growValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.grow_value$field = param1;
      }
      
      public function get growValue() : uint
      {
         return this.grow_value$field;
      }
      
      public function clearNextGrowvalue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.next_growvalue$field = new uint();
      }
      
      public function get hasNextGrowvalue() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set nextGrowvalue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.next_growvalue$field = param1;
      }
      
      public function get nextGrowvalue() : uint
      {
         return this.next_growvalue$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.level$field = new uint();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set level(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.level$field = param1;
      }
      
      public function get level() : uint
      {
         return this.level$field;
      }
      
      public function clearIconStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.icon_status$field = new uint();
      }
      
      public function get hasIconStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set iconStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.icon_status$field = param1;
      }
      
      public function get iconStatus() : uint
      {
         return this.icon_status$field;
      }
      
      public function clearIconGrowvalue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.icon_growvalue$field = new uint();
      }
      
      public function get hasIconGrowvalue() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set iconGrowvalue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.icon_growvalue$field = param1;
      }
      
      public function get iconGrowvalue() : uint
      {
         return this.icon_growvalue$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasGrowValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.grow_value$field);
         }
         if(this.hasNextGrowvalue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.next_growvalue$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.level$field);
         }
         if(this.hasIconStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.icon_status$field);
         }
         if(this.hasIconGrowvalue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.icon_growvalue$field);
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
