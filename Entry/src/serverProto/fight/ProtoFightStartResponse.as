package serverProto.fight
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
   
   public final class ProtoFightStartResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightStartResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const FIGHT_RES_TO_LOAD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightStartResponse.fight_res_to_load","fightResToLoad",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFightResToLoad);
       
      public var ret:ProtoRetInfo;
      
      private var fight_res_to_load$field:serverProto.fight.ProtoFightResToLoad;
      
      public function ProtoFightStartResponse()
      {
         super();
      }
      
      public function clearFightResToLoad() : void
      {
         this.fight_res_to_load$field = null;
      }
      
      public function get hasFightResToLoad() : Boolean
      {
         return this.fight_res_to_load$field != null;
      }
      
      public function set fightResToLoad(param1:serverProto.fight.ProtoFightResToLoad) : void
      {
         this.fight_res_to_load$field = param1;
      }
      
      public function get fightResToLoad() : serverProto.fight.ProtoFightResToLoad
      {
         return this.fight_res_to_load$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasFightResToLoad)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fight_res_to_load$field);
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
