package serverProto.zone
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChangeSceneResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.zone.ProtoChangeSceneResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.zone.ProtoChangeSceneResponse.scene_id","sceneId",2 << 3 | WireType.VARINT);
      
      public static const BORN_POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.zone.ProtoChangeSceneResponse.born_point","bornPoint",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      public var ret:ProtoRetInfo;
      
      private var scene_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var born_point$field:ProtoPoint;
      
      public function ProtoChangeSceneResponse()
      {
         super();
      }
      
      public function clearSceneId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.scene_id$field = new int();
      }
      
      public function get hasSceneId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set sceneId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.scene_id$field = param1;
      }
      
      public function get sceneId() : int
      {
         return this.scene_id$field;
      }
      
      public function clearBornPoint() : void
      {
         this.born_point$field = null;
      }
      
      public function get hasBornPoint() : Boolean
      {
         return this.born_point$field != null;
      }
      
      public function set bornPoint(param1:ProtoPoint) : void
      {
         this.born_point$field = param1;
      }
      
      public function get bornPoint() : ProtoPoint
      {
         return this.born_point$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSceneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.scene_id$field);
         }
         if(this.hasBornPoint)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.born_point$field);
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
