package serverProto.cardpack
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
   
   public final class ProtoNinjaRushBuyNinjaRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoNinjaRushBuyNinjaRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_RUSH_BUY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoNinjaRushBuyNinjaRsp.ninja_rush_buy_info","ninjaRushBuyInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaRushBuyInfo);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_rush_buy_info$field:serverProto.cardpack.ProtoNinjaRushBuyInfo;
      
      public function ProtoNinjaRushBuyNinjaRsp()
      {
         super();
      }
      
      public function clearNinjaRushBuyInfo() : void
      {
         this.ninja_rush_buy_info$field = null;
      }
      
      public function get hasNinjaRushBuyInfo() : Boolean
      {
         return this.ninja_rush_buy_info$field != null;
      }
      
      public function set ninjaRushBuyInfo(param1:serverProto.cardpack.ProtoNinjaRushBuyInfo) : void
      {
         this.ninja_rush_buy_info$field = param1;
      }
      
      public function get ninjaRushBuyInfo() : serverProto.cardpack.ProtoNinjaRushBuyInfo
      {
         return this.ninja_rush_buy_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaRushBuyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_rush_buy_info$field);
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
