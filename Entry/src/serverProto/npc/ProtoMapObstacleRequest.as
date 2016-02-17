package serverProto.npc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMapObstacleRequest extends Message
   {
      
      public static const CLIENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleRequest.client_id","clientId",1 << 3 | WireType.VARINT);
      
      public static const NPC_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleRequest.npc_type","npcType",2 << 3 | WireType.VARINT);
      
      public static const ROPE_DESTINATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoMapObstacleRequest.rope_destination","ropeDestination",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      public var clientId:uint;
      
      public var npcType:uint;
      
      private var rope_destination$field:ProtoPoint;
      
      public function ProtoMapObstacleRequest()
      {
         super();
      }
      
      public function clearRopeDestination() : void
      {
         this.rope_destination$field = null;
      }
      
      public function get hasRopeDestination() : Boolean
      {
         return this.rope_destination$field != null;
      }
      
      public function set ropeDestination(param1:ProtoPoint) : void
      {
         this.rope_destination$field = param1;
      }
      
      public function get ropeDestination() : ProtoPoint
      {
         return this.rope_destination$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.clientId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.npcType);
         if(this.hasRopeDestination)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rope_destination$field);
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
