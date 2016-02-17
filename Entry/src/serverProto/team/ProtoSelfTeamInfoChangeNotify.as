package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSelfTeamInfoChangeNotify extends Message
   {
      
      public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoSelfTeamInfoChangeNotify.reason","reason",1 << 3 | WireType.VARINT,ProtoSelfTeamInfoChangeReason);
      
      public static const SPONSOR:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoSelfTeamInfoChangeNotify.sponsor","sponsor",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const SELF_TEAM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoSelfTeamInfoChangeNotify.self_team_info","selfTeamInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoSelfTeamInfo);
       
      public var reason:int;
      
      private var sponsor$field:ProtoPlayerKey;
      
      private var self_team_info$field:serverProto.team.ProtoSelfTeamInfo;
      
      public function ProtoSelfTeamInfoChangeNotify()
      {
         super();
      }
      
      public function clearSponsor() : void
      {
         this.sponsor$field = null;
      }
      
      public function get hasSponsor() : Boolean
      {
         return this.sponsor$field != null;
      }
      
      public function set sponsor(param1:ProtoPlayerKey) : void
      {
         this.sponsor$field = param1;
      }
      
      public function get sponsor() : ProtoPlayerKey
      {
         return this.sponsor$field;
      }
      
      public function clearSelfTeamInfo() : void
      {
         this.self_team_info$field = null;
      }
      
      public function get hasSelfTeamInfo() : Boolean
      {
         return this.self_team_info$field != null;
      }
      
      public function set selfTeamInfo(param1:serverProto.team.ProtoSelfTeamInfo) : void
      {
         this.self_team_info$field = param1;
      }
      
      public function get selfTeamInfo() : serverProto.team.ProtoSelfTeamInfo
      {
         return this.self_team_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.reason);
         if(this.hasSponsor)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.sponsor$field);
         }
         if(this.hasSelfTeamInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.self_team_info$field);
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
