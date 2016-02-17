package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUpgradeStarResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoUpgradeStarResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NEW_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoUpgradeStarResponse.new_ninja","newNinja",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const UPGRADE_STAR_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoUpgradeStarResponse.upgrade_star_count","upgradeStarCount",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var new_ninja$field:ProtoNinjaInfo;
      
      private var upgrade_star_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoUpgradeStarResponse()
      {
         super();
      }
      
      public function clearNewNinja() : void
      {
         this.new_ninja$field = null;
      }
      
      public function get hasNewNinja() : Boolean
      {
         return this.new_ninja$field != null;
      }
      
      public function set newNinja(param1:ProtoNinjaInfo) : void
      {
         this.new_ninja$field = param1;
      }
      
      public function get newNinja() : ProtoNinjaInfo
      {
         return this.new_ninja$field;
      }
      
      public function clearUpgradeStarCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.upgrade_star_count$field = new uint();
      }
      
      public function get hasUpgradeStarCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set upgradeStarCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.upgrade_star_count$field = param1;
      }
      
      public function get upgradeStarCount() : uint
      {
         return this.upgrade_star_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNewNinja)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.new_ninja$field);
         }
         if(this.hasUpgradeStarCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.upgrade_star_count$field);
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
