package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaAllInOne extends Message
   {
      
      public static const HAS_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoNinjaAllInOne.has_ninja","hasNinja",1 << 3 | WireType.VARINT);
      
      public static const ALL_IN_ONE_NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoNinjaAllInOne.all_in_one_ninja_info","allInOneNinjaInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const NINJA_RECURIT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoNinjaAllInOne.ninja_recurit_info","ninjaRecuritInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaRecruitInfo);
       
      public var hasNinja:int;
      
      private var all_in_one_ninja_info$field:ProtoNinjaInfo;
      
      private var ninja_recurit_info$field:serverProto.ninjaSystem.ProtoNinjaRecruitInfo;
      
      public function ProtoNinjaAllInOne()
      {
         super();
      }
      
      public function clearAllInOneNinjaInfo() : void
      {
         this.all_in_one_ninja_info$field = null;
      }
      
      public function get hasAllInOneNinjaInfo() : Boolean
      {
         return this.all_in_one_ninja_info$field != null;
      }
      
      public function set allInOneNinjaInfo(param1:ProtoNinjaInfo) : void
      {
         this.all_in_one_ninja_info$field = param1;
      }
      
      public function get allInOneNinjaInfo() : ProtoNinjaInfo
      {
         return this.all_in_one_ninja_info$field;
      }
      
      public function clearNinjaRecuritInfo() : void
      {
         this.ninja_recurit_info$field = null;
      }
      
      public function get hasNinjaRecuritInfo() : Boolean
      {
         return this.ninja_recurit_info$field != null;
      }
      
      public function set ninjaRecuritInfo(param1:serverProto.ninjaSystem.ProtoNinjaRecruitInfo) : void
      {
         this.ninja_recurit_info$field = param1;
      }
      
      public function get ninjaRecuritInfo() : serverProto.ninjaSystem.ProtoNinjaRecruitInfo
      {
         return this.ninja_recurit_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.hasNinja);
         if(this.hasAllInOneNinjaInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.all_in_one_ninja_info$field);
         }
         if(this.hasNinjaRecuritInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_recurit_info$field);
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
