package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerNinjaCountChangeNotify extends Message
   {
      
      public static const AWAKE_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoPlayerNinjaCountChangeNotify.awake_ninja_count","awakeNinjaCount",1 << 3 | WireType.VARINT);
      
      public static const RECRUIT_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoPlayerNinjaCountChangeNotify.recruit_ninja_count","recruitNinjaCount",3 << 3 | WireType.VARINT);
      
      public static const UPGRADE_STAR_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoPlayerNinjaCountChangeNotify.upgrade_star_count","upgradeStarCount",4 << 3 | WireType.VARINT);
       
      private var awake_ninja_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var recruit_ninja_count$field:int;
      
      private var upgrade_star_count$field:int;
      
      public function ProtoPlayerNinjaCountChangeNotify()
      {
         super();
      }
      
      public function clearAwakeNinjaCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.awake_ninja_count$field = new int();
      }
      
      public function get hasAwakeNinjaCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awakeNinjaCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.awake_ninja_count$field = param1;
      }
      
      public function get awakeNinjaCount() : int
      {
         return this.awake_ninja_count$field;
      }
      
      public function clearRecruitNinjaCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.recruit_ninja_count$field = new int();
      }
      
      public function get hasRecruitNinjaCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set recruitNinjaCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.recruit_ninja_count$field = param1;
      }
      
      public function get recruitNinjaCount() : int
      {
         return this.recruit_ninja_count$field;
      }
      
      public function clearUpgradeStarCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.upgrade_star_count$field = new int();
      }
      
      public function get hasUpgradeStarCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set upgradeStarCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.upgrade_star_count$field = param1;
      }
      
      public function get upgradeStarCount() : int
      {
         return this.upgrade_star_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasAwakeNinjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.awake_ninja_count$field);
         }
         if(this.hasRecruitNinjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.recruit_ninja_count$field);
         }
         if(this.hasUpgradeStarCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.upgrade_star_count$field);
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
