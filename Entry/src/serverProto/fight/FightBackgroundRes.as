package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class FightBackgroundRes extends Message
   {
      
      public static const BACKGROUND_MAP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.FightBackgroundRes.background_map","backgroundMap",1 << 3 | WireType.VARINT);
      
      public static const BGM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.FightBackgroundRes.bgm","bgm",2 << 3 | WireType.VARINT);
       
      private var background_map$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var bgm$field:uint;
      
      public function FightBackgroundRes()
      {
         super();
      }
      
      public function clearBackgroundMap() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.background_map$field = new uint();
      }
      
      public function get hasBackgroundMap() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set backgroundMap(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.background_map$field = param1;
      }
      
      public function get backgroundMap() : uint
      {
         return this.background_map$field;
      }
      
      public function clearBgm() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.bgm$field = new uint();
      }
      
      public function get hasBgm() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set bgm(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.bgm$field = param1;
      }
      
      public function get bgm() : uint
      {
         return this.bgm$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBackgroundMap)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.background_map$field);
         }
         if(this.hasBgm)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.bgm$field);
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
