package serverProto.cardpack
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaRushBuyNode extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoNinjaRushBuyNode.index","index",1 << 3 | WireType.VARINT);
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoNinjaRushBuyNode.id","id",2 << 3 | WireType.VARINT);
      
      public static const PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoNinjaRushBuyNode.price","price",3 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoNinjaRushBuyNode.state","state",4 << 3 | WireType.VARINT);
      
      public static const PARENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoNinjaRushBuyNode.parent","parent",5 << 3 | WireType.VARINT);
      
      public static const CHILD:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoNinjaRushBuyNode.child","child",6 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.cardpack.ProtoNinjaRushBuyNode.level","level",7 << 3 | WireType.VARINT);
       
      public var index:int;
      
      public var id:int;
      
      public var price:int;
      
      private var state$field:int;
      
      private var hasField$0:uint = 0;
      
      private var parent$field:int;
      
      [ArrayElementType("int")]
      public var child:Array;
      
      private var level$field:int;
      
      public function ProtoNinjaRushBuyNode()
      {
         this.child = [];
         super();
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearParent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.parent$field = new int();
      }
      
      public function get hasParent() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set parent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.parent$field = param1;
      }
      
      public function get parent() : int
      {
         return this.parent$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.index);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.price);
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.state$field);
         }
         if(this.hasParent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.parent$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.child.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.child[_loc2_]);
            _loc2_++;
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
