package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoExtraChannelInfo extends Message
   {
      
      public static const QQ3366_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoExtraChannelInfo.qq3366_level","qq3366Level",1 << 3 | WireType.VARINT);
      
      public static const XINYUE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoExtraChannelInfo.xinyue_level","xinyueLevel",2 << 3 | WireType.VARINT);
       
      private var qq3366_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var xinyue_level$field:int;
      
      public function ProtoExtraChannelInfo()
      {
         super();
      }
      
      public function clearQq3366Level() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.qq3366_level$field = new int();
      }
      
      public function get hasQq3366Level() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set qq3366Level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.qq3366_level$field = param1;
      }
      
      public function get qq3366Level() : int
      {
         return this.qq3366_level$field;
      }
      
      public function clearXinyueLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.xinyue_level$field = new int();
      }
      
      public function get hasXinyueLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set xinyueLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.xinyue_level$field = param1;
      }
      
      public function get xinyueLevel() : int
      {
         return this.xinyue_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasQq3366Level)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.qq3366_level$field);
         }
         if(this.hasXinyueLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.xinyue_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
