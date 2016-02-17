package serverProto.summonMonster
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
   
   public final class ProtoGetContractInfoResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetContractInfoResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetContractInfoResponse.list","list",2 << 3 | WireType.LENGTH_DELIMITED,ProtoContractInfoList);
      
      public static const PROPERTY_BENEFIT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetContractInfoResponse.property_benefit","propertyBenefit",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPropertyBenefit);
       
      public var retInfo:ProtoRetInfo;
      
      private var list$field:serverProto.summonMonster.ProtoContractInfoList;
      
      private var property_benefit$field:serverProto.summonMonster.ProtoPropertyBenefit;
      
      public function ProtoGetContractInfoResponse()
      {
         super();
      }
      
      public function clearList() : void
      {
         this.list$field = null;
      }
      
      public function get hasList() : Boolean
      {
         return this.list$field != null;
      }
      
      public function set list(param1:serverProto.summonMonster.ProtoContractInfoList) : void
      {
         this.list$field = param1;
      }
      
      public function get list() : serverProto.summonMonster.ProtoContractInfoList
      {
         return this.list$field;
      }
      
      public function clearPropertyBenefit() : void
      {
         this.property_benefit$field = null;
      }
      
      public function get hasPropertyBenefit() : Boolean
      {
         return this.property_benefit$field != null;
      }
      
      public function set propertyBenefit(param1:serverProto.summonMonster.ProtoPropertyBenefit) : void
      {
         this.property_benefit$field = param1;
      }
      
      public function get propertyBenefit() : serverProto.summonMonster.ProtoPropertyBenefit
      {
         return this.property_benefit$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.list$field);
         }
         if(this.hasPropertyBenefit)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_benefit$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
