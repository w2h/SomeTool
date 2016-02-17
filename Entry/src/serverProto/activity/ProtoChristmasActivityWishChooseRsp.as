package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChristmasActivityWishChooseRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasActivityWishChooseRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STAT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasActivityWishChooseRsp.stat","stat",2 << 3 | WireType.LENGTH_DELIMITED,ProtoChristmasActivityWishStat);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoChristmasActivityWishChooseRsp.award","award",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var ret:ProtoRetInfo;
      
      private var stat$field:serverProto.activity.ProtoChristmasActivityWishStat;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      public function ProtoChristmasActivityWishChooseRsp()
      {
         this.award = [];
         super();
      }
      
      public function clearStat() : void
      {
         this.stat$field = null;
      }
      
      public function get hasStat() : Boolean
      {
         return this.stat$field != null;
      }
      
      public function set stat(param1:serverProto.activity.ProtoChristmasActivityWishStat) : void
      {
         this.stat$field = param1;
      }
      
      public function get stat() : serverProto.activity.ProtoChristmasActivityWishStat
      {
         return this.stat$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasStat)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stat$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
