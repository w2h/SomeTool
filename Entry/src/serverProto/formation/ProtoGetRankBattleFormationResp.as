package serverProto.formation
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.formationBase.ProtoFormationInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetRankBattleFormationResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const MID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.mid","mid",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const DOWN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.down","down",3 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
      
      public static const UP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formation.ProtoGetRankBattleFormationResp.up","up",4 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationInfo);
       
      public var ret:ProtoRetInfo;
      
      private var mid$field:ProtoFormationInfo;
      
      private var down$field:ProtoFormationInfo;
      
      private var up$field:ProtoFormationInfo;
      
      public function ProtoGetRankBattleFormationResp()
      {
         super();
      }
      
      public function clearMid() : void
      {
         this.mid$field = null;
      }
      
      public function get hasMid() : Boolean
      {
         return this.mid$field != null;
      }
      
      public function set mid(param1:ProtoFormationInfo) : void
      {
         this.mid$field = param1;
      }
      
      public function get mid() : ProtoFormationInfo
      {
         return this.mid$field;
      }
      
      public function clearDown() : void
      {
         this.down$field = null;
      }
      
      public function get hasDown() : Boolean
      {
         return this.down$field != null;
      }
      
      public function set down(param1:ProtoFormationInfo) : void
      {
         this.down$field = param1;
      }
      
      public function get down() : ProtoFormationInfo
      {
         return this.down$field;
      }
      
      public function clearUp() : void
      {
         this.up$field = null;
      }
      
      public function get hasUp() : Boolean
      {
         return this.up$field != null;
      }
      
      public function set up(param1:ProtoFormationInfo) : void
      {
         this.up$field = param1;
      }
      
      public function get up() : ProtoFormationInfo
      {
         return this.up$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasMid)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.mid$field);
         }
         if(this.hasDown)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.down$field);
         }
         if(this.hasUp)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.up$field);
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
