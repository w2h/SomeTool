package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetAllInOneNinjaListResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetAllInOneNinjaListResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ALL_IN_ONE_NINJA_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetAllInOneNinjaListResponse.all_in_one_ninja_list","allInOneNinjaList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAllInOneNinjaList);
       
      public var ret:ProtoRetInfo;
      
      private var all_in_one_ninja_list$field:serverProto.ninjaSystem.ProtoAllInOneNinjaList;
      
      public function ProtoGetAllInOneNinjaListResponse()
      {
         super();
      }
      
      public function clearAllInOneNinjaList() : void
      {
         this.all_in_one_ninja_list$field = null;
      }
      
      public function get hasAllInOneNinjaList() : Boolean
      {
         return this.all_in_one_ninja_list$field != null;
      }
      
      public function set allInOneNinjaList(param1:serverProto.ninjaSystem.ProtoAllInOneNinjaList) : void
      {
         this.all_in_one_ninja_list$field = param1;
      }
      
      public function get allInOneNinjaList() : serverProto.ninjaSystem.ProtoAllInOneNinjaList
      {
         return this.all_in_one_ninja_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasAllInOneNinjaList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.all_in_one_ninja_list$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
