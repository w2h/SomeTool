package serverProto.rank
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetRankReq extends Message
   {
      
      public static const RANK_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.rank.ProtoGetRankReq.rank_type","rankType",1 << 3 | WireType.VARINT,ProtoRankType);
      
      public static const ROLE_CATEGORY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.rank.ProtoGetRankReq.role_category_type","roleCategoryType",2 << 3 | WireType.VARINT,ProtoRoleCategoryType);
      
      public static const BEGIN_RANK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rank.ProtoGetRankReq.begin_rank","beginRank",3 << 3 | WireType.VARINT);
      
      public static const COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rank.ProtoGetRankReq.count","count",4 << 3 | WireType.VARINT);
      
      public static const MERGED_RANK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.rank.ProtoGetRankReq.merged_rank","mergedRank",5 << 3 | WireType.VARINT);
       
      private var rank_type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var role_category_type$field:int;
      
      private var begin_rank$field:int;
      
      private var count$field:int;
      
      private var merged_rank$field:Boolean;
      
      public function ProtoGetRankReq()
      {
         super();
      }
      
      public function clearRankType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rank_type$field = new int();
      }
      
      public function get hasRankType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rankType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rank_type$field = param1;
      }
      
      public function get rankType() : int
      {
         return this.rank_type$field;
      }
      
      public function clearRoleCategoryType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.role_category_type$field = new int();
      }
      
      public function get hasRoleCategoryType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set roleCategoryType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.role_category_type$field = param1;
      }
      
      public function get roleCategoryType() : int
      {
         return this.role_category_type$field;
      }
      
      public function clearBeginRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.begin_rank$field = new int();
      }
      
      public function get hasBeginRank() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set beginRank(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.begin_rank$field = param1;
      }
      
      public function get beginRank() : int
      {
         return this.begin_rank$field;
      }
      
      public function clearCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.count$field = new int();
      }
      
      public function get hasCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set count(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.count$field = param1;
      }
      
      public function get count() : int
      {
         return this.count$field;
      }
      
      public function clearMergedRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.merged_rank$field = new Boolean();
      }
      
      public function get hasMergedRank() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set mergedRank(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.merged_rank$field = param1;
      }
      
      public function get mergedRank() : Boolean
      {
         return this.merged_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRankType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.rank_type$field);
         }
         if(this.hasRoleCategoryType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.role_category_type$field);
         }
         if(this.hasBeginRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.begin_rank$field);
         }
         if(this.hasCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.count$field);
         }
         if(this.hasMergedRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.merged_rank$field);
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
