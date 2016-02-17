package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDungeonCardInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.dungeon.ProtoDungeonCardInfo.type","type",1 << 3 | WireType.VARINT,ProtoDungeonCardType);
      
      public static const ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonCardInfo.item_info","itemInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const IS_RARE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonCardInfo.is_rare","isRare",3 << 3 | WireType.VARINT);
       
      public var type:int;
      
      public var itemInfo:ProtoItemInfo;
      
      private var is_rare$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoDungeonCardInfo()
      {
         super();
      }
      
      public function clearIsRare() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_rare$field = new Boolean();
      }
      
      public function get hasIsRare() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isRare(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_rare$field = param1;
      }
      
      public function get isRare() : Boolean
      {
         return this.is_rare$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_MESSAGE(param1,this.itemInfo);
         if(this.hasIsRare)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.is_rare$field);
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
