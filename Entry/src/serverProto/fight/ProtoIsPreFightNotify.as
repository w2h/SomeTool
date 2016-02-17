package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoIsPreFightNotify extends Message
   {
      
      public static const OPTION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoIsPreFightNotify.option","option",1 << 3 | WireType.VARINT);
      
      public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoIsPreFightNotify.background_res","backgroundRes",2 << 3 | WireType.LENGTH_DELIMITED,FightBackgroundRes);
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoIsPreFightNotify.player_key","playerKey",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      public var option:int;
      
      private var background_res$field:serverProto.fight.FightBackgroundRes;
      
      private var player_key$field:ProtoPlayerKey;
      
      public function ProtoIsPreFightNotify()
      {
         super();
      }
      
      public function clearBackgroundRes() : void
      {
         this.background_res$field = null;
      }
      
      public function get hasBackgroundRes() : Boolean
      {
         return this.background_res$field != null;
      }
      
      public function set backgroundRes(param1:serverProto.fight.FightBackgroundRes) : void
      {
         this.background_res$field = param1;
      }
      
      public function get backgroundRes() : serverProto.fight.FightBackgroundRes
      {
         return this.background_res$field;
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.option);
         if(this.hasBackgroundRes)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.background_res$field);
         }
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
