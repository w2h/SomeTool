package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamDamageStat extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTeamDamageStat.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NINJA_DAMAGE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTeamDamageStat.ninja_damage_list","ninjaDamageList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaDamageStat);
      
      public static const TEAM_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTeamDamageStat.team_pos","teamPos",3 << 3 | WireType.VARINT);
       
      public var playerKey:ProtoPlayerKey;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaDamageStat")]
      public var ninjaDamageList:Array;
      
      private var team_pos$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoTeamDamageStat()
      {
         this.ninjaDamageList = [];
         super();
      }
      
      public function clearTeamPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.team_pos$field = new int();
      }
      
      public function get hasTeamPos() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set teamPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.team_pos$field = param1;
      }
      
      public function get teamPos() : int
      {
         return this.team_pos$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.playerKey);
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaDamageList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaDamageList[_loc2_]);
            _loc2_++;
         }
         if(this.hasTeamPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.team_pos$field);
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
