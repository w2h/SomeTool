package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChristmasTaskInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTaskInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoChristmasTaskInfo.desc","desc",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTaskInfo.data","data",3 << 3 | WireType.VARINT);
      
      public static const TOTAL_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTaskInfo.total_data","totalData",4 << 3 | WireType.VARINT);
      
      public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTaskInfo.status","status",5 << 3 | WireType.VARINT);
      
      public static const FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTaskInfo.flag","flag",6 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoChristmasTaskInfo.name","name",7 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasTaskInfo.player_id","playerId",8 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoChristmasTaskInfo.index","index",9 << 3 | WireType.VARINT);
       
      private var id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var desc$field:String;
      
      private var data$field:uint;
      
      private var total_data$field:uint;
      
      private var status$field:uint;
      
      private var flag$field:uint;
      
      private var name$field:String;
      
      private var player_id$field:ProtoPlayerKey;
      
      private var index$field:uint;
      
      public function ProtoChristmasTaskInfo()
      {
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : uint
      {
         return this.id$field;
      }
      
      public function clearDesc() : void
      {
         this.desc$field = null;
      }
      
      public function get hasDesc() : Boolean
      {
         return this.desc$field != null;
      }
      
      public function set desc(param1:String) : void
      {
         this.desc$field = param1;
      }
      
      public function get desc() : String
      {
         return this.desc$field;
      }
      
      public function clearData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.data$field = new uint();
      }
      
      public function get hasData() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set data(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.data$field = param1;
      }
      
      public function get data() : uint
      {
         return this.data$field;
      }
      
      public function clearTotalData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.total_data$field = new uint();
      }
      
      public function get hasTotalData() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set totalData(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.total_data$field = param1;
      }
      
      public function get totalData() : uint
      {
         return this.total_data$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.status$field = new uint();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set status(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.status$field = param1;
      }
      
      public function get status() : uint
      {
         return this.status$field;
      }
      
      public function clearFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.flag$field = new uint();
      }
      
      public function get hasFlag() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set flag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.flag$field = param1;
      }
      
      public function get flag() : uint
      {
         return this.flag$field;
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearPlayerId() : void
      {
         this.player_id$field = null;
      }
      
      public function get hasPlayerId() : Boolean
      {
         return this.player_id$field != null;
      }
      
      public function set playerId(param1:ProtoPlayerKey) : void
      {
         this.player_id$field = param1;
      }
      
      public function get playerId() : ProtoPlayerKey
      {
         return this.player_id$field;
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.index$field = new uint();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set index(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.index$field = param1;
      }
      
      public function get index() : uint
      {
         return this.index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.id$field);
         }
         if(this.hasDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.desc$field);
         }
         if(this.hasData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.data$field);
         }
         if(this.hasTotalData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.total_data$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.status$field);
         }
         if(this.hasFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.flag$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.index$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
