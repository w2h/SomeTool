package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaPropertyStrengthenInfoList extends Message
   {
      
      public static const HP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.hp","hp",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropertyStrengthenInfo);
      
      public static const ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.attack","attack",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropertyStrengthenInfo);
      
      public static const DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.defense","defense",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropertyStrengthenInfo);
      
      public static const NINJA_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.ninja_attack","ninjaAttack",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropertyStrengthenInfo);
      
      public static const NINJA_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList.ninja_defense","ninjaDefense",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropertyStrengthenInfo);
       
      public var hp:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
      
      public var attack:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
      
      public var defense:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
      
      public var ninjaAttack:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
      
      public var ninjaDefense:serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
      
      public function ProtoNinjaPropertyStrengthenInfoList()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.hp);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_MESSAGE(param1,this.attack);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
         WriteUtils.write$TYPE_MESSAGE(param1,this.defense);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaAttack);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaDefense);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
