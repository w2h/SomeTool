package serverProto.tactic
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
   
   public final class ProtoLearnTacticRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoLearnTacticRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TACTIC:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoLearnTacticRsp.tactic","tactic",3 << 3 | WireType.LENGTH_DELIMITED,ProtoTacticInfo);
       
      public var ret:ProtoRetInfo;
      
      private var tactic$field:serverProto.tactic.ProtoTacticInfo;
      
      public function ProtoLearnTacticRsp()
      {
         super();
      }
      
      public function clearTactic() : void
      {
         this.tactic$field = null;
      }
      
      public function get hasTactic() : Boolean
      {
         return this.tactic$field != null;
      }
      
      public function set tactic(param1:serverProto.tactic.ProtoTacticInfo) : void
      {
         this.tactic$field = param1;
      }
      
      public function get tactic() : serverProto.tactic.ProtoTacticInfo
      {
         return this.tactic$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasTactic)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tactic$field);
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
