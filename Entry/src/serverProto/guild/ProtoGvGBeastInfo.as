package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGBeastInfo extends Message
   {
      
      public static const BEAST_NUM_IN_BATTLE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGvGBeastInfo.beast_num_in_battle","beastNumInBattle",1 << 3 | WireType.VARINT);
      
      public static const MAX_BEAST_NUM_IN_BATTLE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGvGBeastInfo.MAX_beast_num_in_battle","mAXBeastNumInBattle",2 << 3 | WireType.VARINT);
      
      public static const BEAST_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBeastInfo.beast_info","beastInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildBeastInfo);
       
      private var beast_num_in_battle$field:int;
      
      private var hasField$0:uint = 0;
      
      private var MAX_beast_num_in_battle$field:int;
      
      [ArrayElementType("serverProto.guild.ProtoGuildBeastInfo")]
      public var beastInfo:Array;
      
      public function ProtoGvGBeastInfo()
      {
         this.beastInfo = [];
         super();
      }
      
      public function clearBeastNumInBattle() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.beast_num_in_battle$field = new int();
      }
      
      public function get hasBeastNumInBattle() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beastNumInBattle(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.beast_num_in_battle$field = param1;
      }
      
      public function get beastNumInBattle() : int
      {
         return this.beast_num_in_battle$field;
      }
      
      public function clearMAXBeastNumInBattle() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.MAX_beast_num_in_battle$field = new int();
      }
      
      public function get hasMAXBeastNumInBattle() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set mAXBeastNumInBattle(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.MAX_beast_num_in_battle$field = param1;
      }
      
      public function get mAXBeastNumInBattle() : int
      {
         return this.MAX_beast_num_in_battle$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBeastNumInBattle)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.beast_num_in_battle$field);
         }
         if(this.hasMAXBeastNumInBattle)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.MAX_beast_num_in_battle$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.beastInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.beastInfo[_loc2_]);
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
