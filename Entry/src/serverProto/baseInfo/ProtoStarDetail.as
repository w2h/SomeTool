package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoStarDetail extends Message
   {
      
      public static const UPGRADE_STAR_NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoStarDetail.upgrade_star_ninja_id","upgradeStarNinjaId",1 << 3 | WireType.VARINT);
      
      public static const STAR_ADDITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoStarDetail.star_addition","starAddition",2 << 3 | WireType.VARINT);
       
      private var upgrade_star_ninja_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var star_addition$field:uint;
      
      public function ProtoStarDetail()
      {
         super();
      }
      
      public function clearUpgradeStarNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.upgrade_star_ninja_id$field = new uint();
      }
      
      public function get hasUpgradeStarNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set upgradeStarNinjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.upgrade_star_ninja_id$field = param1;
      }
      
      public function get upgradeStarNinjaId() : uint
      {
         return this.upgrade_star_ninja_id$field;
      }
      
      public function clearStarAddition() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.star_addition$field = new uint();
      }
      
      public function get hasStarAddition() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set starAddition(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.star_addition$field = param1;
      }
      
      public function get starAddition() : uint
      {
         return this.star_addition$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasUpgradeStarNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.upgrade_star_ninja_id$field);
         }
         if(this.hasStarAddition)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.star_addition$field);
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
