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
   
   public final class ProtoGetNinjaStarListResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaStarListResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STAR_NINJA_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaStarListResponse.star_ninja_list","starNinjaList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoStarNinjaList);
       
      public var ret:ProtoRetInfo;
      
      private var star_ninja_list$field:serverProto.ninjaSystem.ProtoStarNinjaList;
      
      public function ProtoGetNinjaStarListResponse()
      {
         super();
      }
      
      public function clearStarNinjaList() : void
      {
         this.star_ninja_list$field = null;
      }
      
      public function get hasStarNinjaList() : Boolean
      {
         return this.star_ninja_list$field != null;
      }
      
      public function set starNinjaList(param1:serverProto.ninjaSystem.ProtoStarNinjaList) : void
      {
         this.star_ninja_list$field = param1;
      }
      
      public function get starNinjaList() : serverProto.ninjaSystem.ProtoStarNinjaList
      {
         return this.star_ninja_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasStarNinjaList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.star_ninja_list$field);
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
