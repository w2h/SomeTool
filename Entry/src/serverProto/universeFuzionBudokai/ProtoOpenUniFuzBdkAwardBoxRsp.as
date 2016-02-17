package serverProto.universeFuzionBudokai
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
   
   public final class ProtoOpenUniFuzBdkAwardBoxRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoOpenUniFuzBdkAwardBoxRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const OPENED_AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoOpenUniFuzBdkAwardBoxRsp.opened_award","openedAward",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkAward);
       
      public var ret:ProtoRetInfo;
      
      private var opened_award$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward;
      
      public function ProtoOpenUniFuzBdkAwardBoxRsp()
      {
         super();
      }
      
      public function clearOpenedAward() : void
      {
         this.opened_award$field = null;
      }
      
      public function get hasOpenedAward() : Boolean
      {
         return this.opened_award$field != null;
      }
      
      public function set openedAward(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward) : void
      {
         this.opened_award$field = param1;
      }
      
      public function get openedAward() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkAward
      {
         return this.opened_award$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasOpenedAward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.opened_award$field);
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
