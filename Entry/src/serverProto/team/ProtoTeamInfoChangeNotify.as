package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamInfoChangeNotify extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamInfoChangeNotify.type","type",1 << 3 | WireType.VARINT,ProtoTeamInfoChangeType);
      
      public static const TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamInfoChangeNotify.team_info","teamInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAllTeamInfo);
       
      public var type:int;
      
      private var team_info$field:serverProto.team.ProtoAllTeamInfo;
      
      public function ProtoTeamInfoChangeNotify()
      {
         super();
      }
      
      public function clearTeamInfo() : void
      {
         this.team_info$field = null;
      }
      
      public function get hasTeamInfo() : Boolean
      {
         return this.team_info$field != null;
      }
      
      public function set teamInfo(param1:serverProto.team.ProtoAllTeamInfo) : void
      {
         this.team_info$field = param1;
      }
      
      public function get teamInfo() : serverProto.team.ProtoAllTeamInfo
      {
         return this.team_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasTeamInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.team_info$field);
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
