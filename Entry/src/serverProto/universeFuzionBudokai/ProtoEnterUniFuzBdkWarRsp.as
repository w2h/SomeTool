package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT64;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.Int64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEnterUniFuzBdkWarRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoEnterUniFuzBdkWarRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const WAR_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoEnterUniFuzBdkWarRsp.war_info","warInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkWar);
      
      public static const CROSS_URL:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionBudokai.ProtoEnterUniFuzBdkWarRsp.cross_url","crossUrl",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CROSS_PORT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionBudokai.ProtoEnterUniFuzBdkWarRsp.cross_port","crossPort",4 << 3 | WireType.VARINT);
      
      public static const BATTLE_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.universeFuzionBudokai.ProtoEnterUniFuzBdkWarRsp.battle_id","battleId",5 << 3 | WireType.VARINT);
      
      public static const NOW_TIME:FieldDescriptor$TYPE_SINT64 = new FieldDescriptor$TYPE_SINT64("serverProto.universeFuzionBudokai.ProtoEnterUniFuzBdkWarRsp.now_time","nowTime",6 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var war_info$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar;
      
      private var cross_url$field:String;
      
      private var cross_port$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var battle_id$field:UInt64;
      
      private var now_time$field:Int64;
      
      public function ProtoEnterUniFuzBdkWarRsp()
      {
         super();
      }
      
      public function clearWarInfo() : void
      {
         this.war_info$field = null;
      }
      
      public function get hasWarInfo() : Boolean
      {
         return this.war_info$field != null;
      }
      
      public function set warInfo(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar) : void
      {
         this.war_info$field = param1;
      }
      
      public function get warInfo() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar
      {
         return this.war_info$field;
      }
      
      public function clearCrossUrl() : void
      {
         this.cross_url$field = null;
      }
      
      public function get hasCrossUrl() : Boolean
      {
         return this.cross_url$field != null;
      }
      
      public function set crossUrl(param1:String) : void
      {
         this.cross_url$field = param1;
      }
      
      public function get crossUrl() : String
      {
         return this.cross_url$field;
      }
      
      public function clearCrossPort() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.cross_port$field = new uint();
      }
      
      public function get hasCrossPort() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set crossPort(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.cross_port$field = param1;
      }
      
      public function get crossPort() : uint
      {
         return this.cross_port$field;
      }
      
      public function clearBattleId() : void
      {
         this.battle_id$field = null;
      }
      
      public function get hasBattleId() : Boolean
      {
         return this.battle_id$field != null;
      }
      
      public function set battleId(param1:UInt64) : void
      {
         this.battle_id$field = param1;
      }
      
      public function get battleId() : UInt64
      {
         return this.battle_id$field;
      }
      
      public function clearNowTime() : void
      {
         this.now_time$field = null;
      }
      
      public function get hasNowTime() : Boolean
      {
         return this.now_time$field != null;
      }
      
      public function set nowTime(param1:Int64) : void
      {
         this.now_time$field = param1;
      }
      
      public function get nowTime() : Int64
      {
         return this.now_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasWarInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.war_info$field);
         }
         if(this.hasCrossUrl)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.cross_url$field);
         }
         if(this.hasCrossPort)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.cross_port$field);
         }
         if(this.hasBattleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT64(param1,this.battle_id$field);
         }
         if(this.hasNowTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT64(param1,this.now_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
