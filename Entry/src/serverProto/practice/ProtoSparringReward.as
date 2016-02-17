package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSparringReward extends Message
   {
      
      public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoSparringReward.friend","friend",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const MONEY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSparringReward.money","money",2 << 3 | WireType.VARINT);
      
      public static const HAS_GET:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoSparringReward.has_get","hasGet",3 << 3 | WireType.VARINT);
      
      public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.practice.ProtoSparringReward.time","time",4 << 3 | WireType.VARINT);
       
      private var friend$field:ProtoPlayerKey;
      
      private var money$field:int;
      
      private var hasField$0:uint = 0;
      
      private var has_get$field:int;
      
      private var time$field:uint;
      
      public function ProtoSparringReward()
      {
         super();
      }
      
      public function clearFriend() : void
      {
         this.friend$field = null;
      }
      
      public function get hasFriend() : Boolean
      {
         return this.friend$field != null;
      }
      
      public function set friend(param1:ProtoPlayerKey) : void
      {
         this.friend$field = param1;
      }
      
      public function get friend() : ProtoPlayerKey
      {
         return this.friend$field;
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.money$field = new int();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set money(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.money$field = param1;
      }
      
      public function get money() : int
      {
         return this.money$field;
      }
      
      public function clearHasGet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.has_get$field = new int();
      }
      
      public function get hasHasGet() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set hasGet(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.has_get$field = param1;
      }
      
      public function get hasGet() : int
      {
         return this.has_get$field;
      }
      
      public function clearTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.time$field = new uint();
      }
      
      public function get hasTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set time(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.time$field = param1;
      }
      
      public function get time() : uint
      {
         return this.time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFriend)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend$field);
         }
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.money$field);
         }
         if(this.hasHasGet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.has_get$field);
         }
         if(this.hasTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.time$field);
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
