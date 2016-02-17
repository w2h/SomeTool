package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.Int64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetUniFuzBdkRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const WAR_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkRsp.war_list","warList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkWar);
      
      public static const AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkRsp.award","award",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkPlayerAward);
      
      public static const NOW_TIME:FieldDescriptor$TYPE_SINT64 = new FieldDescriptor$TYPE_SINT64("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkRsp.now_time","nowTime",4 << 3 | WireType.VARINT);
      
      public static const CLOSEST_WAR:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkRsp.closest_war","closestWar",5 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkWarSchedule);
      
      public static const SEASON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkRsp.season","season",6 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar")]
      public var warList:Array;
      
      private var award$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkPlayerAward;
      
      private var now_time$field:Int64;
      
      [ArrayElementType("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarSchedule")]
      public var closestWar:Array;
      
      private var season$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGetUniFuzBdkRsp()
      {
         this.warList = [];
         this.closestWar = [];
         super();
      }
      
      public function clearAward() : void
      {
         this.award$field = null;
      }
      
      public function get hasAward() : Boolean
      {
         return this.award$field != null;
      }
      
      public function set award(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkPlayerAward) : void
      {
         this.award$field = param1;
      }
      
      public function get award() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkPlayerAward
      {
         return this.award$field;
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
      
      public function clearSeason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.season$field = new int();
      }
      
      public function get hasSeason() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set season(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.season$field = param1;
      }
      
      public function get season() : int
      {
         return this.season$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.warList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.warList[_loc2_]);
            _loc2_++;
         }
         if(this.hasAward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award$field);
         }
         if(this.hasNowTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT64(param1,this.now_time$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.closestWar.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.closestWar[_loc3_]);
            _loc3_++;
         }
         if(this.hasSeason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.season$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
