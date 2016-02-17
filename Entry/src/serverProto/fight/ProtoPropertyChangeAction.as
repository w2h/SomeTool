package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPropertyChangeAction extends Message
   {
      
      public static const SIDE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoPropertyChangeAction.side","side",1 << 3 | WireType.VARINT);
      
      public static const ARG:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoPropertyChangeAction.arg","arg",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFightArg);
       
      private var side$field:int;
      
      private var hasField$0:uint = 0;
      
      private var arg$field:serverProto.fight.ProtoFightArg;
      
      public function ProtoPropertyChangeAction()
      {
         super();
      }
      
      public function clearSide() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.side$field = new int();
      }
      
      public function get hasSide() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set side(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.side$field = param1;
      }
      
      public function get side() : int
      {
         return this.side$field;
      }
      
      public function clearArg() : void
      {
         this.arg$field = null;
      }
      
      public function get hasArg() : Boolean
      {
         return this.arg$field != null;
      }
      
      public function set arg(param1:serverProto.fight.ProtoFightArg) : void
      {
         this.arg$field = param1;
      }
      
      public function get arg() : serverProto.fight.ProtoFightArg
      {
         return this.arg$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSide)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.side$field);
         }
         if(this.hasArg)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.arg$field);
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
