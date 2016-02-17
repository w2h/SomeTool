package serverProto.warWorship
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoWarWorshipnNinjaListInfo extends Message
   {
      
      public static const CARRY_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipnNinjaListInfo.carry_ninja_list","carryNinjaList",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const RESERVE_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.warWorship.ProtoWarWorshipnNinjaListInfo.reserve_ninja_list","reserveNinjaList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
       
      [ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
      public var carryNinjaList:Array;
      
      [ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
      public var reserveNinjaList:Array;
      
      public function ProtoWarWorshipnNinjaListInfo()
      {
         this.carryNinjaList = [];
         this.reserveNinjaList = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.carryNinjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.carryNinjaList[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.reserveNinjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.reserveNinjaList[_loc3_]);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
