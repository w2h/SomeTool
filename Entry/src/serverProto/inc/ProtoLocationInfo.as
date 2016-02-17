package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoLocationInfo extends Message
   {
      
      public static const SCENE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.scene","scene",1 << 3 | WireType.VARINT);
      
      public static const X:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.x","x",2 << 3 | WireType.VARINT);
      
      public static const Y:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.y","y",3 << 3 | WireType.VARINT);
      
      public static const FACE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoLocationInfo.face","face",4 << 3 | WireType.VARINT);
       
      private var scene$field:int;
      
      private var hasField$0:uint = 0;
      
      private var x$field:int;
      
      private var y$field:int;
      
      private var face$field:int;
      
      public function ProtoLocationInfo()
      {
         super();
      }
      
      public function clearScene() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.scene$field = new int();
      }
      
      public function get hasScene() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set scene(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.scene$field = param1;
      }
      
      public function get scene() : int
      {
         return this.scene$field;
      }
      
      public function clearX() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.x$field = new int();
      }
      
      public function get hasX() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set x(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.x$field = param1;
      }
      
      public function get x() : int
      {
         return this.x$field;
      }
      
      public function clearY() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.y$field = new int();
      }
      
      public function get hasY() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set y(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.y$field = param1;
      }
      
      public function get y() : int
      {
         return this.y$field;
      }
      
      public function clearFace() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.face$field = new int();
      }
      
      public function get hasFace() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set face(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.face$field = param1;
      }
      
      public function get face() : int
      {
         return this.face$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasScene)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.scene$field);
         }
         if(this.hasX)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.x$field);
         }
         if(this.hasY)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.y$field);
         }
         if(this.hasFace)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.face$field);
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
