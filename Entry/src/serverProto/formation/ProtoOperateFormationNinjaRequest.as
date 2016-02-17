package serverProto.formation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.formationBase.FormationCommands;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOperateFormationNinjaRequest extends Message
   {
      
      public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.formation.ProtoOperateFormationNinjaRequest.cmd_id","cmdId",1 << 3 | WireType.VARINT,FormationCommands);
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formation.ProtoOperateFormationNinjaRequest.ninja_seq","ninjaSeq",2 << 3 | WireType.VARINT);
      
      public static const FORMATION_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.formation.ProtoOperateFormationNinjaRequest.formation_id","formationId",3 << 3 | WireType.VARINT,FormationType);
      
      public static const LOCATION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formation.ProtoOperateFormationNinjaRequest.location","location",4 << 3 | WireType.VARINT);
       
      public var cmdId:int;
      
      public var ninjaSeq:uint;
      
      public var formationId:int;
      
      private var location$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoOperateFormationNinjaRequest()
      {
         super();
      }
      
      public function clearLocation() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.location$field = new int();
      }
      
      public function get hasLocation() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set location(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.location$field = param1;
      }
      
      public function get location() : int
      {
         return this.location$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.cmdId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaSeq);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_ENUM(param1,this.formationId);
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.location$field);
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
