package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFormationNinjaSimpleInfo extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoFormationNinjaSimpleInfo.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const NINJA_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoFormationNinjaSimpleInfo.ninja_level","ninjaLevel",2 << 3 | WireType.VARINT);
      
      public static const NINJA_STAR_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoFormationNinjaSimpleInfo.ninja_star_level","ninjaStarLevel",3 << 3 | WireType.VARINT);
       
      private var ninja_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var ninja_level$field:uint;
      
      private var ninja_star_level$field:uint;
      
      public function ProtoFormationNinjaSimpleInfo()
      {
         super();
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_id$field = new uint();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : uint
      {
         return this.ninja_id$field;
      }
      
      public function clearNinjaLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninja_level$field = new uint();
      }
      
      public function get hasNinjaLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjaLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninja_level$field = param1;
      }
      
      public function get ninjaLevel() : uint
      {
         return this.ninja_level$field;
      }
      
      public function clearNinjaStarLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ninja_star_level$field = new uint();
      }
      
      public function get hasNinjaStarLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ninjaStarLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ninja_star_level$field = param1;
      }
      
      public function get ninjaStarLevel() : uint
      {
         return this.ninja_star_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_id$field);
         }
         if(this.hasNinjaLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_level$field);
         }
         if(this.hasNinjaStarLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_star_level$field);
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
