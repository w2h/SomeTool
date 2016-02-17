package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniUserShowInfo extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniUserShowInfo.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.universeFuzionBudokai.ProtoUniUserShowInfo.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CAREER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionBudokai.ProtoUniUserShowInfo.career","career",3 << 3 | WireType.VARINT);
      
      public static const TITLE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.universeFuzionBudokai.ProtoUniUserShowInfo.title","title",4 << 3 | WireType.VARINT);
       
      public var playerId:ProtoPlayerKey;
      
      private var name$field:String;
      
      private var career$field:int;
      
      private var hasField$0:uint = 0;
      
      private var title$field:int;
      
      public function ProtoUniUserShowInfo()
      {
         super();
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearCareer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.career$field = new int();
      }
      
      public function get hasCareer() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set career(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.career$field = param1;
      }
      
      public function get career() : int
      {
         return this.career$field;
      }
      
      public function clearTitle() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.title$field = new int();
      }
      
      public function get hasTitle() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set title(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.title$field = param1;
      }
      
      public function get title() : int
      {
         return this.title$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.playerId);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasCareer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.career$field);
         }
         if(this.hasTitle)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.title$field);
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
