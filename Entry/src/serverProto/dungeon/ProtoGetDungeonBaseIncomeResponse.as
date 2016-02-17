package serverProto.dungeon
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
   
   public final class ProtoGetDungeonBaseIncomeResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonBaseIncomeResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BASE_INCOME:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonBaseIncomeResponse.base_income","baseIncome",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseIncome);
       
      public var ret:ProtoRetInfo;
      
      private var base_income$field:serverProto.dungeon.ProtoBaseIncome;
      
      public function ProtoGetDungeonBaseIncomeResponse()
      {
         super();
      }
      
      public function clearBaseIncome() : void
      {
         this.base_income$field = null;
      }
      
      public function get hasBaseIncome() : Boolean
      {
         return this.base_income$field != null;
      }
      
      public function set baseIncome(param1:serverProto.dungeon.ProtoBaseIncome) : void
      {
         this.base_income$field = param1;
      }
      
      public function get baseIncome() : serverProto.dungeon.ProtoBaseIncome
      {
         return this.base_income$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasBaseIncome)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_income$field);
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
