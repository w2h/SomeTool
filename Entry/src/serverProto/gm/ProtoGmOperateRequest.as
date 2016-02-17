package serverProto.gm
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGmOperateRequest extends Message
   {
      
      public static const OPERATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.gm.ProtoGmOperateRequest.operate","operate",1 << 3 | WireType.VARINT);
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.gm.ProtoGmOperateRequest.player_key","playerKey",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const HOUR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.gm.ProtoGmOperateRequest.hour","hour",3 << 3 | WireType.VARINT);
       
      private var operate$field:int;
      
      private var hasField$0:uint = 0;
      
      private var player_key$field:ProtoPlayerKey;
      
      private var hour$field:int;
      
      public function ProtoGmOperateRequest()
      {
         super();
      }
      
      public function clearOperate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.operate$field = new int();
      }
      
      public function get hasOperate() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set operate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.operate$field = param1;
      }
      
      public function get operate() : int
      {
         return this.operate$field;
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearHour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.hour$field = new int();
      }
      
      public function get hasHour() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set hour(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.hour$field = param1;
      }
      
      public function get hour() : int
      {
         return this.hour$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasOperate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.operate$field);
         }
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasHour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.hour$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
