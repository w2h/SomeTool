package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBagCardInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.num","num",2 << 3 | WireType.VARINT);
      
      public static const COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.combat","combat",3 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagCardInfo.index","index",4 << 3 | WireType.VARINT);
      
      public static const RECRUIT_STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.bag.ProtoBagCardInfo.recruit_status","recruitStatus",5 << 3 | WireType.VARINT,ProtoBagCardRecruitStatus);
       
      public var id:uint;
      
      public var num:uint;
      
      private var combat$field:uint;
      
      private var hasField$0:uint = 0;
      
      public var index:uint;
      
      private var recruit_status$field:int;
      
      public function ProtoBagCardInfo()
      {
         super();
      }
      
      public function clearCombat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.combat$field = new uint();
      }
      
      public function get hasCombat() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set combat(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.combat$field = param1;
      }
      
      public function get combat() : uint
      {
         return this.combat$field;
      }
      
      public function clearRecruitStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.recruit_status$field = new int();
      }
      
      public function get hasRecruitStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set recruitStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.recruit_status$field = param1;
      }
      
      public function get recruitStatus() : int
      {
         return this.recruit_status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.num);
         if(this.hasCombat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.combat$field);
         }
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.index);
         if(this.hasRecruitStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_ENUM(param1,this.recruit_status$field);
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
