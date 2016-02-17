package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetUniFuzDashBoardRsp extends Message
   {
      
      public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionPre.ProtoGetUniFuzDashBoardRsp.state","state",1 << 3 | WireType.VARINT,ProtoUniverseState);
      
      public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoGetUniFuzDashBoardRsp.time","time",2 << 3 | WireType.VARINT);
      
      public static const SEASON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoGetUniFuzDashBoardRsp.season","season",3 << 3 | WireType.VARINT);
      
      public static const PORT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionPre.ProtoGetUniFuzDashBoardRsp.port","port",4 << 3 | WireType.VARINT);
      
      public static const IP:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionPre.ProtoGetUniFuzDashBoardRsp.ip","ip",5 << 3 | WireType.LENGTH_DELIMITED);
       
      private var state$field:int;
      
      private var hasField$0:uint = 0;
      
      private var time$field:uint;
      
      private var season$field:uint;
      
      private var port$field:uint;
      
      private var ip$field:String;
      
      public function ProtoGetUniFuzDashBoardRsp()
      {
         super();
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.time$field = new uint();
      }
      
      public function get hasTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set time(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.time$field = param1;
      }
      
      public function get time() : uint
      {
         return this.time$field;
      }
      
      public function clearSeason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.season$field = new uint();
      }
      
      public function get hasSeason() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set season(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.season$field = param1;
      }
      
      public function get season() : uint
      {
         return this.season$field;
      }
      
      public function clearPort() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.port$field = new uint();
      }
      
      public function get hasPort() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set port(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.port$field = param1;
      }
      
      public function get port() : uint
      {
         return this.port$field;
      }
      
      public function clearIp() : void
      {
         this.ip$field = null;
      }
      
      public function get hasIp() : Boolean
      {
         return this.ip$field != null;
      }
      
      public function set ip(param1:String) : void
      {
         this.ip$field = param1;
      }
      
      public function get ip() : String
      {
         return this.ip$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.state$field);
         }
         if(this.hasTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.time$field);
         }
         if(this.hasSeason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.season$field);
         }
         if(this.hasPort)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.port$field);
         }
         if(this.hasIp)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.ip$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
