package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoForgeQualityItem extends Message
   {
      
      public static const FORGE_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoForgeQualityItem.forge_percent","forgePercent",1 << 3 | WireType.VARINT);
      
      public static const FORGE_ADDITION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoForgeQualityItem.forge_addition","forgeAddition",2 << 3 | WireType.VARINT);
      
      public static const FORGE_SURMOUNT_PERCENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoForgeQualityItem.forge_surmount_percent","forgeSurmountPercent",3 << 3 | WireType.VARINT);
       
      private var forge_percent$field:int;
      
      private var hasField$0:uint = 0;
      
      private var forge_addition$field:int;
      
      private var forge_surmount_percent$field:int;
      
      public function ProtoForgeQualityItem()
      {
         super();
      }
      
      public function clearForgePercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.forge_percent$field = new int();
      }
      
      public function get hasForgePercent() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set forgePercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.forge_percent$field = param1;
      }
      
      public function get forgePercent() : int
      {
         return this.forge_percent$field;
      }
      
      public function clearForgeAddition() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.forge_addition$field = new int();
      }
      
      public function get hasForgeAddition() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set forgeAddition(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.forge_addition$field = param1;
      }
      
      public function get forgeAddition() : int
      {
         return this.forge_addition$field;
      }
      
      public function clearForgeSurmountPercent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.forge_surmount_percent$field = new int();
      }
      
      public function get hasForgeSurmountPercent() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set forgeSurmountPercent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.forge_surmount_percent$field = param1;
      }
      
      public function get forgeSurmountPercent() : int
      {
         return this.forge_surmount_percent$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasForgePercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.forge_percent$field);
         }
         if(this.hasForgeAddition)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.forge_addition$field);
         }
         if(this.hasForgeSurmountPercent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.forge_surmount_percent$field);
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
