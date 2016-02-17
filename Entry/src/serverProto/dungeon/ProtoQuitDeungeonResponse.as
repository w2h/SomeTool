package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQuitDeungeonResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoQuitDeungeonResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoQuitDeungeonResponse.power","power",2 << 3 | WireType.VARINT);
      
      public static const SCENE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoQuitDeungeonResponse.scene_id","sceneId",3 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoQuitDeungeonResponse.location","location",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      public var ret:ProtoRetInfo;
      
      private var power$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var scene_id$field:int;
      
      private var location$field:ProtoPoint;
      
      public function ProtoQuitDeungeonResponse()
      {
         super();
      }
      
      public function clearPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.power$field = new uint();
      }
      
      public function get hasPower() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set power(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.power$field = param1;
      }
      
      public function get power() : uint
      {
         return this.power$field;
      }
      
      public function clearSceneId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.scene_id$field = new int();
      }
      
      public function get hasSceneId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set sceneId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.scene_id$field = param1;
      }
      
      public function get sceneId() : int
      {
         return this.scene_id$field;
      }
      
      public function clearLocation() : void
      {
         this.location$field = null;
      }
      
      public function get hasLocation() : Boolean
      {
         return this.location$field != null;
      }
      
      public function set location(param1:ProtoPoint) : void
      {
         this.location$field = param1;
      }
      
      public function get location() : ProtoPoint
      {
         return this.location$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.power$field);
         }
         if(this.hasSceneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.scene_id$field);
         }
         if(this.hasLocation)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.location$field);
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
