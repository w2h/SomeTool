package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.formationBase.ProtoTeamFormationInfo;
   import serverProto.baseInfo.ProtoNinjaPackage;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPreFightResNotify extends Message
   {
      
      public static const TEAM_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPreFightResNotify.team_pos","teamPos",1 << 3 | WireType.VARINT);
      
      public static const PLAYER_TEAM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPreFightResNotify.player_team","playerTeam",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamFormationInfo);
      
      public static const NPC_TEAM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPreFightResNotify.npc_team","npcTeam",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerTeamPos);
      
      public static const NINJA_PACKAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPreFightResNotify.ninja_package","ninjaPackage",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPackage);
      
      public static const CURRENT_TALENT_PAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPreFightResNotify.current_talent_page","currentTalentPage",5 << 3 | WireType.VARINT);
      
      public static const CAN_STAND_POS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPreFightResNotify.can_stand_pos","canStandPos",6 << 3 | WireType.VARINT);
       
      public var teamPos:int;
      
      [ArrayElementType("serverProto.formationBase.ProtoTeamFormationInfo")]
      public var playerTeam:Array;
      
      [ArrayElementType("serverProto.fight.ProtoPlayerTeamPos")]
      public var npcTeam:Array;
      
      private var ninja_package$field:ProtoNinjaPackage;
      
      private var current_talent_page$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("uint")]
      public var canStandPos:Array;
      
      public function ProtoPreFightResNotify()
      {
         this.playerTeam = [];
         this.npcTeam = [];
         this.canStandPos = [];
         super();
      }
      
      public function clearNinjaPackage() : void
      {
         this.ninja_package$field = null;
      }
      
      public function get hasNinjaPackage() : Boolean
      {
         return this.ninja_package$field != null;
      }
      
      public function set ninjaPackage(param1:ProtoNinjaPackage) : void
      {
         this.ninja_package$field = param1;
      }
      
      public function get ninjaPackage() : ProtoNinjaPackage
      {
         return this.ninja_package$field;
      }
      
      public function clearCurrentTalentPage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_talent_page$field = new uint();
      }
      
      public function get hasCurrentTalentPage() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentTalentPage(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_talent_page$field = param1;
      }
      
      public function get currentTalentPage() : uint
      {
         return this.current_talent_page$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.teamPos);
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerTeam.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerTeam[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.npcTeam.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.npcTeam[_loc3_]);
            _loc3_++;
         }
         if(this.hasNinjaPackage)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_package$field);
         }
         if(this.hasCurrentTalentPage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.current_talent_page$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.canStandPos.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.canStandPos[_loc4_]);
            _loc4_++;
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
