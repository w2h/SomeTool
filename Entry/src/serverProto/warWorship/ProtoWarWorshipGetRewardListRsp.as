package serverProto.warWorship
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWarWorshipGetRewardListRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const KILLED_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.killed_ninja","killedNinja",2 << 3 | WireType.LENGTH_DELIMITED,ProtoWarWorshipAwardPackage);
      
      public static const FINISHED_BATTLE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.finished_battle","finishedBattle",3 << 3 | WireType.LENGTH_DELIMITED,ProtoWarWorshipAwardPackage);
      
      public static const WIN_BATTLE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.win_battle","winBattle",4 << 3 | WireType.LENGTH_DELIMITED,ProtoWarWorshipAwardPackage);
      
      public static const MATCH_X:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.warWorship.ProtoWarWorshipGetRewardListRsp.match_x","matchX",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var killed_ninja$field:serverProto.warWorship.ProtoWarWorshipAwardPackage;
      
      private var finished_battle$field:serverProto.warWorship.ProtoWarWorshipAwardPackage;
      
      [ArrayElementType("serverProto.warWorship.ProtoWarWorshipAwardPackage")]
      public var winBattle:Array;
      
      private var match_x$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoWarWorshipGetRewardListRsp()
      {
         this.winBattle = [];
         super();
      }
      
      public function clearKilledNinja() : void
      {
         this.killed_ninja$field = null;
      }
      
      public function get hasKilledNinja() : Boolean
      {
         return this.killed_ninja$field != null;
      }
      
      public function set killedNinja(param1:serverProto.warWorship.ProtoWarWorshipAwardPackage) : void
      {
         this.killed_ninja$field = param1;
      }
      
      public function get killedNinja() : serverProto.warWorship.ProtoWarWorshipAwardPackage
      {
         return this.killed_ninja$field;
      }
      
      public function clearFinishedBattle() : void
      {
         this.finished_battle$field = null;
      }
      
      public function get hasFinishedBattle() : Boolean
      {
         return this.finished_battle$field != null;
      }
      
      public function set finishedBattle(param1:serverProto.warWorship.ProtoWarWorshipAwardPackage) : void
      {
         this.finished_battle$field = param1;
      }
      
      public function get finishedBattle() : serverProto.warWorship.ProtoWarWorshipAwardPackage
      {
         return this.finished_battle$field;
      }
      
      public function clearMatchX() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.match_x$field = new int();
      }
      
      public function get hasMatchX() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set matchX(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.match_x$field = param1;
      }
      
      public function get matchX() : int
      {
         return this.match_x$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasKilledNinja)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.killed_ninja$field);
         }
         if(this.hasFinishedBattle)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.finished_battle$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.winBattle.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.winBattle[_loc2_]);
            _loc2_++;
         }
         if(this.hasMatchX)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.match_x$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
