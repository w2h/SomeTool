package serverProto.formation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.formationBase.ProtoFormationInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOperateFormationNinjaResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoOperateFormationNinjaResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const FORMATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoOperateFormationNinjaResponse.formation","formation",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const NEED_REFRESH_NINJA_PACKAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formation.ProtoOperateFormationNinjaResponse.need_refresh_ninja_package","needRefreshNinjaPackage",3 << 3 | WireType.VARINT);
      
      public static const NEED_REFRESH_NINJA_STORAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formation.ProtoOperateFormationNinjaResponse.need_refresh_ninja_storage","needRefreshNinjaStorage",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var formation$field:ProtoFormationInfo;
      
      private var need_refresh_ninja_package$field:int;
      
      private var hasField$0:uint = 0;
      
      private var need_refresh_ninja_storage$field:int;
      
      public function ProtoOperateFormationNinjaResponse()
      {
         super();
      }
      
      public function clearFormation() : void
      {
         this.formation$field = null;
      }
      
      public function get hasFormation() : Boolean
      {
         return this.formation$field != null;
      }
      
      public function set formation(param1:ProtoFormationInfo) : void
      {
         this.formation$field = param1;
      }
      
      public function get formation() : ProtoFormationInfo
      {
         return this.formation$field;
      }
      
      public function clearNeedRefreshNinjaPackage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_refresh_ninja_package$field = new int();
      }
      
      public function get hasNeedRefreshNinjaPackage() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needRefreshNinjaPackage(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_refresh_ninja_package$field = param1;
      }
      
      public function get needRefreshNinjaPackage() : int
      {
         return this.need_refresh_ninja_package$field;
      }
      
      public function clearNeedRefreshNinjaStorage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.need_refresh_ninja_storage$field = new int();
      }
      
      public function get hasNeedRefreshNinjaStorage() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set needRefreshNinjaStorage(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.need_refresh_ninja_storage$field = param1;
      }
      
      public function get needRefreshNinjaStorage() : int
      {
         return this.need_refresh_ninja_storage$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasFormation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.formation$field);
         }
         if(this.hasNeedRefreshNinjaPackage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.need_refresh_ninja_package$field);
         }
         if(this.hasNeedRefreshNinjaStorage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.need_refresh_ninja_storage$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
