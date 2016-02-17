package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGCheerReq extends Message
   {
      
      public static const CHEER_STRING:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGCheerReq.cheer_string","cheerString",1 << 3 | WireType.LENGTH_DELIMITED);
       
      private var cheer_string$field:String;
      
      public function ProtoGvGCheerReq()
      {
         super();
      }
      
      public function clearCheerString() : void
      {
         this.cheer_string$field = null;
      }
      
      public function get hasCheerString() : Boolean
      {
         return this.cheer_string$field != null;
      }
      
      public function set cheerString(param1:String) : void
      {
         this.cheer_string$field = param1;
      }
      
      public function get cheerString() : String
      {
         return this.cheer_string$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasCheerString)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.cheer_string$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
