package serverProto.task
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTaskInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.type","type",2 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.state","state",3 << 3 | WireType.VARINT);
      
      public static const IS_NEW:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.is_new","isNew",4 << 3 | WireType.VARINT);
      
      public static const CONDITIONS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskInfo.conditions","conditions",5 << 3 | WireType.LENGTH_DELIMITED,ProtoConditionInfo);
      
      public static const ACCEPT_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.accept_time","acceptTime",6 << 3 | WireType.VARINT);
      
      public static const COND_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfo.cond_state","condState",7 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      public var type:uint;
      
      public var state:uint;
      
      public var isNew:uint;
      
      [ArrayElementType("serverProto.task.ProtoConditionInfo")]
      public var conditions:Array;
      
      private var accept_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var cond_state$field:uint;
      
      public function ProtoTaskInfo()
      {
         this.conditions = [];
         super();
      }
      
      public function clearAcceptTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.accept_time$field = new uint();
      }
      
      public function get hasAcceptTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set acceptTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.accept_time$field = param1;
      }
      
      public function get acceptTime() : uint
      {
         return this.accept_time$field;
      }
      
      public function clearCondState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.cond_state$field = new uint();
      }
      
      public function get hasCondState() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set condState(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.cond_state$field = param1;
      }
      
      public function get condState() : uint
      {
         return this.cond_state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.type);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.state);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.isNew);
         var _loc2_:uint = 0;
         while(_loc2_ < this.conditions.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.conditions[_loc2_]);
            _loc2_++;
         }
         if(this.hasAcceptTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.accept_time$field);
         }
         if(this.hasCondState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.cond_state$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
