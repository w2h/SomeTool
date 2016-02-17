package serverProto.rankBattle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRankBattleReportNotify extends Message
   {
      
      public static const REPORT_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rankBattle.ProtoRankBattleReportNotify.report_list","reportList",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRankBattleReportInfo);
      
      public static const IS_GLOBAL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.rankBattle.ProtoRankBattleReportNotify.is_global","isGlobal",2 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.rankBattle.ProtoRankBattleReportInfo")]
      public var reportList:Array;
      
      private var is_global$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoRankBattleReportNotify()
      {
         this.reportList = [];
         super();
      }
      
      public function clearIsGlobal() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_global$field = new Boolean();
      }
      
      public function get hasIsGlobal() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isGlobal(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_global$field = param1;
      }
      
      public function get isGlobal() : Boolean
      {
         return this.is_global$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.reportList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.reportList[_loc2_]);
            _loc2_++;
         }
         if(this.hasIsGlobal)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_global$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
