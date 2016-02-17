package serverProto.zone
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChangeSceneRequest extends Message
   {
      
      public static const CHANGE_SCENE_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zone.ProtoChangeSceneRequest.change_scene_type","changeSceneType",1 << 3 | WireType.VARINT);
      
      public static const PORTAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zone.ProtoChangeSceneRequest.portal_id","portalId",2 << 3 | WireType.VARINT);
       
      public var changeSceneType:uint;
      
      private var portal_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoChangeSceneRequest()
      {
         super();
      }
      
      public function clearPortalId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.portal_id$field = new uint();
      }
      
      public function get hasPortalId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set portalId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.portal_id$field = param1;
      }
      
      public function get portalId() : uint
      {
         return this.portal_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.changeSceneType);
         if(this.hasPortalId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.portal_id$field);
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
