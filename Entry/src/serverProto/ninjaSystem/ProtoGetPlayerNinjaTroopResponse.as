package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.baseInfo.ProtoNinjaPackage;
   import serverProto.formationBase.ProtoFormationInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetPlayerNinjaTroopResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_PACKAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.ninja_package","ninjaPackage",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPackage);
      
      public static const NINJA_STORAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.ninja_storage","ninjaStorage",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjStorage);
      
      public static const FORMATION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.formation_info","formationInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const AWAKE_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.awake_ninja_count","awakeNinjaCount",5 << 3 | WireType.VARINT);
      
      public static const RECRUIT_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.recruit_ninja_count","recruitNinjaCount",7 << 3 | WireType.VARINT);
      
      public static const UPGRADE_STAR_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoGetPlayerNinjaTroopResponse.upgrade_star_count","upgradeStarCount",8 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_package$field:ProtoNinjaPackage;
      
      private var ninja_storage$field:serverProto.ninjaSystem.ProtoNinjStorage;
      
      private var formation_info$field:ProtoFormationInfo;
      
      private var awake_ninja_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var recruit_ninja_count$field:int;
      
      private var upgrade_star_count$field:int;
      
      public function ProtoGetPlayerNinjaTroopResponse()
      {
         super();
      }
      
      public function clearNinjaPackage() : void
      {
         this.ninja_package$field = null;
      }
      
      public function get hasNinjaPackage() : Boolean
      {
         return this.ninja_package$field != null;
      }
      
      public function set ninjaPackage(param1:ProtoNinjaPackage) : void
      {
         this.ninja_package$field = param1;
      }
      
      public function get ninjaPackage() : ProtoNinjaPackage
      {
         return this.ninja_package$field;
      }
      
      public function clearNinjaStorage() : void
      {
         this.ninja_storage$field = null;
      }
      
      public function get hasNinjaStorage() : Boolean
      {
         return this.ninja_storage$field != null;
      }
      
      public function set ninjaStorage(param1:serverProto.ninjaSystem.ProtoNinjStorage) : void
      {
         this.ninja_storage$field = param1;
      }
      
      public function get ninjaStorage() : serverProto.ninjaSystem.ProtoNinjStorage
      {
         return this.ninja_storage$field;
      }
      
      public function clearFormationInfo() : void
      {
         this.formation_info$field = null;
      }
      
      public function get hasFormationInfo() : Boolean
      {
         return this.formation_info$field != null;
      }
      
      public function set formationInfo(param1:ProtoFormationInfo) : void
      {
         this.formation_info$field = param1;
      }
      
      public function get formationInfo() : ProtoFormationInfo
      {
         return this.formation_info$field;
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
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaPackage)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_package$field);
         }
         if(this.hasNinjaStorage)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_storage$field);
         }
         if(this.hasFormationInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.formation_info$field);
         }
         if(this.hasAwakeNinjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.awake_ninja_count$field);
         }
         if(this.hasRecruitNinjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.recruit_ninja_count$field);
         }
         if(this.hasUpgradeStarCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
