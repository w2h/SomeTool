package serverProto.dungeon
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
   
   public final class ProtoDungeonRaidsResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonRaidsResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const RAIDS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonRaidsResponse.raids_info","raidsInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoDungeonRaidsInfo);
       
      public var ret:ProtoRetInfo;
      
      private var raids_info$field:serverProto.dungeon.ProtoDungeonRaidsInfo;
      
      public function ProtoDungeonRaidsResponse()
      {
         super();
      }
      
      public function clearRaidsInfo() : void
      {
         this.raids_info$field = null;
      }
      
      public function get hasRaidsInfo() : Boolean
      {
         return this.raids_info$field != null;
      }
      
      public function set raidsInfo(param1:serverProto.dungeon.ProtoDungeonRaidsInfo) : void
      {
         this.raids_info$field = param1;
      }
      
      public function get raidsInfo() : serverProto.dungeon.ProtoDungeonRaidsInfo
      {
         return this.raids_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRaidsInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.raids_info$field);
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
