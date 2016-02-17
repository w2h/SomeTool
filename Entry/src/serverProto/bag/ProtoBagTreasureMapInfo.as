package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBagTreasureMapInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagTreasureMapInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagTreasureMapInfo.index","index",2 << 3 | WireType.VARINT);
      
      public static const MAP_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagTreasureMapInfo.map_id","mapId",3 << 3 | WireType.VARINT);
      
      public static const POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagTreasureMapInfo.point","point",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      public var id:int;
      
      public var index:int;
      
      private var map_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var point$field:ProtoPoint;
      
      public function ProtoBagTreasureMapInfo()
      {
         super();
      }
      
      public function clearMapId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.map_id$field = new int();
      }
      
      public function get hasMapId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set mapId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.map_id$field = param1;
      }
      
      public function get mapId() : int
      {
         return this.map_id$field;
      }
      
      public function clearPoint() : void
      {
         this.point$field = null;
      }
      
      public function get hasPoint() : Boolean
      {
         return this.point$field != null;
      }
      
      public function set point(param1:ProtoPoint) : void
      {
         this.point$field = param1;
      }
      
      public function get point() : ProtoPoint
      {
         return this.point$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.index);
         if(this.hasMapId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.map_id$field);
         }
         if(this.hasPoint)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.point$field);
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
