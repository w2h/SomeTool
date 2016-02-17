package serverProto.npc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMapPitfallNotify extends Message
   {
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.uin","uin",1 << 3 | WireType.VARINT);
      
      public static const NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.ninjia","ninjia",2 << 3 | WireType.VARINT);
      
      public static const PITFALL_CLIENT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.pitfall_client_id","pitfallClientId",3 << 3 | WireType.VARINT);
      
      public static const DAMAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.npc.ProtoMapPitfallNotify.damage","damage",4 << 3 | WireType.VARINT);
       
      public var uin:uint;
      
      public var ninjia:uint;
      
      public var pitfallClientId:uint;
      
      private var damage$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoMapPitfallNotify()
      {
         super();
      }
      
      public function clearDamage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.damage$field = new uint();
      }
      
      public function get hasDamage() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set damage(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.damage$field = param1;
      }
      
      public function get damage() : uint
      {
         return this.damage$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.uin);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjia);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.pitfallClientId);
         if(this.hasDamage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.damage$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
