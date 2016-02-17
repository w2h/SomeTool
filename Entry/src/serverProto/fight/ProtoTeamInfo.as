package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamInfo extends Message
   {
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamInfo.team_id","teamId",1 << 3 | WireType.VARINT);
      
      public static const KATHA_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoTeamInfo.katha_value","kathaValue",2 << 3 | WireType.VARINT);
      
      public static const NINJA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTeamInfo.ninja","ninja",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinja);
       
      public var teamId:uint;
      
      private var katha_value$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoNinja")]
      public var ninja:Array;
      
      public function ProtoTeamInfo()
      {
         this.ninja = [];
         super();
      }
      
      public function clearKathaValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.katha_value$field = new uint();
      }
      
      public function get hasKathaValue() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set kathaValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.katha_value$field = param1;
      }
      
      public function get kathaValue() : uint
      {
         return this.katha_value$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.teamId);
         if(this.hasKathaValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.katha_value$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninja.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
