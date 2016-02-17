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
   
   public final class ProtoGetAwakeNinjaListResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetAwakeNinjaListResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AWAKE_NINJA_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetAwakeNinjaListResponse.awake_ninja_list","awakeNinjaList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAwakeNinjaList);
       
      public var ret:ProtoRetInfo;
      
      private var awake_ninja_list$field:serverProto.ninjaSystem.ProtoAwakeNinjaList;
      
      public function ProtoGetAwakeNinjaListResponse()
      {
         super();
      }
      
      public function clearAwakeNinjaList() : void
      {
         this.awake_ninja_list$field = null;
      }
      
      public function get hasAwakeNinjaList() : Boolean
      {
         return this.awake_ninja_list$field != null;
      }
      
      public function set awakeNinjaList(param1:serverProto.ninjaSystem.ProtoAwakeNinjaList) : void
      {
         this.awake_ninja_list$field = param1;
      }
      
      public function get awakeNinjaList() : serverProto.ninjaSystem.ProtoAwakeNinjaList
      {
         return this.awake_ninja_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasAwakeNinjaList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awake_ninja_list$field);
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
