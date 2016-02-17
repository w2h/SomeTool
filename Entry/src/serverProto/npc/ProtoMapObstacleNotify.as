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
   
   public final class ProtoMapObstacleNotify extends Message
   {
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleNotify.uin","uin",1 << 3 | WireType.VARINT);
      
      public static const NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleNotify.ninjia","ninjia",2 << 3 | WireType.VARINT);
      
      public static const OBSTACLE_CLIENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapObstacleNotify.obstacle_client_id","obstacleClientId",3 << 3 | WireType.VARINT);
      
      public static const DESTINATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoMapObstacleNotify.destination","destination",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      public var uin:uint;
      
      public var ninjia:uint;
      
      public var obstacleClientId:uint;
      
      private var destination$field:ProtoPoint;
      
      public function ProtoMapObstacleNotify()
      {
         super();
      }
      
      public function clearDestination() : void
      {
         this.destination$field = null;
      }
      
      public function get hasDestination() : Boolean
      {
         return this.destination$field != null;
      }
      
      public function set destination(param1:ProtoPoint) : void
      {
         this.destination$field = param1;
      }
      
      public function get destination() : ProtoPoint
      {
         return this.destination$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.uin);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjia);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.obstacleClientId);
         if(this.hasDestination)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.destination$field);
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
