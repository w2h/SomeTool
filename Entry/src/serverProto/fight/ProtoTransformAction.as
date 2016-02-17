package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTransformAction extends Message
   {
      
      public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTransformAction.active_ninja","activeNinja",1 << 3 | WireType.LENGTH_DELIMITED,ProtoActiveNinjaInfo);
      
      public static const TRANSFORM_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTransformAction.transform_ninja","transformNinja",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinja);
      
      public static const NEED_BLACK_SCREEN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTransformAction.need_black_screen","needBlackScreen",3 << 3 | WireType.VARINT);
      
      public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTransformAction.ninja_hp_change","ninjaHpChange",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaHpChange);
      
      public static const INVISIBLE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoTransformAction.invisible","invisible",5 << 3 | WireType.VARINT);
       
      public var activeNinja:serverProto.fight.ProtoActiveNinjaInfo;
      
      public var transformNinja:serverProto.fight.ProtoNinja;
      
      private var need_black_screen$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
      public var ninjaHpChange:Array;
      
      private var invisible$field:int;
      
      public function ProtoTransformAction()
      {
         this.ninjaHpChange = [];
         super();
      }
      
      public function clearNeedBlackScreen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_black_screen$field = new int();
      }
      
      public function get hasNeedBlackScreen() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needBlackScreen(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_black_screen$field = param1;
      }
      
      public function get needBlackScreen() : int
      {
         return this.need_black_screen$field;
      }
      
      public function clearInvisible() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.invisible$field = new int();
      }
      
      public function get hasInvisible() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set invisible(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.invisible$field = param1;
      }
      
      public function get invisible() : int
      {
         return this.invisible$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.activeNinja);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_MESSAGE(param1,this.transformNinja);
         if(this.hasNeedBlackScreen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.need_black_screen$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaHpChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaHpChange[_loc2_]);
            _loc2_++;
         }
         if(this.hasInvisible)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.invisible$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
