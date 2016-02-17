package serverProto.player
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamShowInfo extends Message
   {
      
      public static const CAPTAIN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoTeamShowInfo.captain","captain",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerShowInfo);
      
      public static const FOLLOW_MEMBER:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoTeamShowInfo.follow_member","followMember",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerShowInfo);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.player.ProtoTeamShowInfo.team_id","teamId",3 << 3 | WireType.VARINT);
      
      public static const IS_FIGHT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.player.ProtoTeamShowInfo.is_fight","isFight",4 << 3 | WireType.VARINT);
      
      public static const NOTIFY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoTeamShowInfo.notify_type","notifyType",5 << 3 | WireType.VARINT,ProtoMoveNotifyType);
      
      public static const POINTS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoTeamShowInfo.points","points",6 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      private var captain$field:serverProto.player.ProtoPlayerShowInfo;
      
      [ArrayElementType("serverProto.player.ProtoPlayerShowInfo")]
      public var followMember:Array;
      
      private var team_id$field:UInt64;
      
      private var is_fight$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var notify_type$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoPoint")]
      public var points:Array;
      
      public function ProtoTeamShowInfo()
      {
         this.followMember = [];
         this.points = [];
         super();
      }
      
      public function clearCaptain() : void
      {
         this.captain$field = null;
      }
      
      public function get hasCaptain() : Boolean
      {
         return this.captain$field != null;
      }
      
      public function set captain(param1:serverProto.player.ProtoPlayerShowInfo) : void
      {
         this.captain$field = param1;
      }
      
      public function get captain() : serverProto.player.ProtoPlayerShowInfo
      {
         return this.captain$field;
      }
      
      public function clearTeamId() : void
      {
         this.team_id$field = null;
      }
      
      public function get hasTeamId() : Boolean
      {
         return this.team_id$field != null;
      }
      
      public function set teamId(param1:UInt64) : void
      {
         this.team_id$field = param1;
      }
      
      public function get teamId() : UInt64
      {
         return this.team_id$field;
      }
      
      public function clearIsFight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_fight$field = new Boolean();
      }
      
      public function get hasIsFight() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isFight(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_fight$field = param1;
      }
      
      public function get isFight() : Boolean
      {
         return this.is_fight$field;
      }
      
      public function clearNotifyType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.notify_type$field = new int();
      }
      
      public function get hasNotifyType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set notifyType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.notify_type$field = param1;
      }
      
      public function get notifyType() : int
      {
         return this.notify_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasCaptain)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.captain$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.followMember.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.followMember[_loc2_]);
            _loc2_++;
         }
         if(this.hasTeamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT64(param1,this.team_id$field);
         }
         if(this.hasIsFight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_BOOL(param1,this.is_fight$field);
         }
         if(this.hasNotifyType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_ENUM(param1,this.notify_type$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.points.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.points[_loc3_]);
            _loc3_++;
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
