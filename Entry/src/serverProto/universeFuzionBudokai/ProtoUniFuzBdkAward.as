package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzBdkAward extends Message
   {
      
      public static const GROUP_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward.group_type","groupType",1 << 3 | WireType.VARINT,UniFuzBdkGroupType);
      
      public static const WAR_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward.war_type","warType",2 << 3 | WireType.VARINT,UniFuzBdkWarType);
      
      public static const AWARD_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward.award_id","awardId",3 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward.state","state",4 << 3 | WireType.VARINT);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward.item_id","itemId",5 << 3 | WireType.VARINT);
       
      public var groupType:int;
      
      public var warType:int;
      
      public var awardId:int;
      
      private var state$field:int;
      
      private var hasField$0:uint = 0;
      
      private var item_id$field:int;
      
      public function ProtoUniFuzBdkAward()
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
      
      public function clearItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.item_id$field = new int();
      }
      
      public function get hasItemId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itemId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.item_id$field = param1;
      }
      
      public function get itemId() : int
      {
         return this.item_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.groupType);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.warType);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_SINT32(param1,this.awardId);
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.state$field);
         }
         if(this.hasItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.item_id$field);
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
