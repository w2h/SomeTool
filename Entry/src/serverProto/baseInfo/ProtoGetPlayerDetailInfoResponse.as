package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.formationBase.ProtoFormationInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetPlayerDetailInfoResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_PACKAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.ninja_package","ninjaPackage",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPackage);
      
      public static const FORMATION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.formation","formation",3 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const NINJA_PACKAGE_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.ninja_package_ulimit","ninjaPackageUlimit",4 << 3 | WireType.VARINT);
      
      public static const FORMATION_NINJA_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoGetPlayerDetailInfoResponse.formation_ninja_ulimit","formationNinjaUlimit",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_package$field:serverProto.baseInfo.ProtoNinjaPackage;
      
      [ArrayElementType("serverProto.formationBase.ProtoFormationInfo")]
      public var formation:Array;
      
      public var ninjaPackageUlimit:uint;
      
      public var formationNinjaUlimit:uint;
      
      public function ProtoGetPlayerDetailInfoResponse()
      {
         this.formation = [];
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
      
      public function set ninjaPackage(param1:serverProto.baseInfo.ProtoNinjaPackage) : void
      {
         this.ninja_package$field = param1;
      }
      
      public function get ninjaPackage() : serverProto.baseInfo.ProtoNinjaPackage
      {
         return this.ninja_package$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaPackage)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_package$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.formation.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.formation[_loc2_]);
            _loc2_++;
         }
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaPackageUlimit);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_UINT32(param1,this.formationNinjaUlimit);
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
