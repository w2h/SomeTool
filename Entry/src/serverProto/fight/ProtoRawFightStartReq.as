package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRawFightStartReq extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoRawFightStartReq.type","type",1 << 3 | WireType.VARINT,RawFightStartType);
      
      public static const WHEEL_WAR_REQ:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRawFightStartReq.wheel_war_req","wheelWarReq",2 << 3 | WireType.LENGTH_DELIMITED,ProtoRawFightWheelWarReq);
       
      public var type:int;
      
      private var wheel_war_req$field:serverProto.fight.ProtoRawFightWheelWarReq;
      
      public function ProtoRawFightStartReq()
      {
         super();
      }
      
      public function clearWheelWarReq() : void
      {
         this.wheel_war_req$field = null;
      }
      
      public function get hasWheelWarReq() : Boolean
      {
         return this.wheel_war_req$field != null;
      }
      
      public function set wheelWarReq(param1:serverProto.fight.ProtoRawFightWheelWarReq) : void
      {
         this.wheel_war_req$field = param1;
      }
      
      public function get wheelWarReq() : serverProto.fight.ProtoRawFightWheelWarReq
      {
         return this.wheel_war_req$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasWheelWarReq)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.wheel_war_req$field);
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
