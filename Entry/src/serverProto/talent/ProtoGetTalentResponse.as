package serverProto.talent
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetTalentResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TALENT_PAGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoGetTalentResponse.talent_pages","talentPages",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGetTalentPage);
      
      public static const CURRENT_TALENT_PAGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoGetTalentResponse.current_talent_page","currentTalentPage",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.talent.ProtoGetTalentPage")]
      public var talentPages:Array;
      
      private var current_talent_page$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGetTalentResponse()
      {
         this.talentPages = [];
         super();
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
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.talentPages.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.talentPages[_loc2_]);
            _loc2_++;
         }
         if(this.hasCurrentTalentPage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.current_talent_page$field);
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
