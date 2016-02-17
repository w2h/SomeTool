package serverProto.bath
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
   
   public final class BathStatsChangeInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.bath.BathStatsChangeInfo.type","type",1 << 3 | WireType.VARINT,BathStatsChangeType);
      
      public static const PLAYER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bath.BathStatsChangeInfo.player_info","playerInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBathPlayerInfo);
       
      public var type:int;
      
      private var player_info$field:serverProto.bath.ProtoBathPlayerInfo;
      
      public function BathStatsChangeInfo()
      {
         super();
      }
      
      public function clearPlayerInfo() : void
      {
         this.player_info$field = null;
      }
      
      public function get hasPlayerInfo() : Boolean
      {
         return this.player_info$field != null;
      }
      
      public function set playerInfo(param1:serverProto.bath.ProtoBathPlayerInfo) : void
      {
         this.player_info$field = param1;
      }
      
      public function get playerInfo() : serverProto.bath.ProtoBathPlayerInfo
      {
         return this.player_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasPlayerInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_info$field);
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
