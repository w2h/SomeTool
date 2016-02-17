package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTGPInfo extends Message
   {
      
      public static const TGP_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.tgp_flag","tgpFlag",1 << 3 | WireType.VARINT);
      
      public static const AUTO_LAUNCH_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.auto_launch_flag","autoLaunchFlag",2 << 3 | WireType.VARINT);
      
      public static const AUTO_LAUNCH_WITH_STARTUP_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.auto_launch_with_startup_flag","autoLaunchWithStartupFlag",3 << 3 | WireType.VARINT);
      
      public static const TGP_BOX_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoTGPInfo.tgp_box_flag","tgpBoxFlag",4 << 3 | WireType.VARINT);
       
      private var tgp_flag$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var auto_launch_flag$field:Boolean;
      
      private var auto_launch_with_startup_flag$field:Boolean;
      
      private var tgp_box_flag$field:Boolean;
      
      public function ProtoTGPInfo()
      {
         super();
      }
      
      public function clearTgpFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.tgp_flag$field = new Boolean();
      }
      
      public function get hasTgpFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set tgpFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.tgp_flag$field = param1;
      }
      
      public function get tgpFlag() : Boolean
      {
         return this.tgp_flag$field;
      }
      
      public function clearAutoLaunchFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.auto_launch_flag$field = new Boolean();
      }
      
      public function get hasAutoLaunchFlag() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set autoLaunchFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.auto_launch_flag$field = param1;
      }
      
      public function get autoLaunchFlag() : Boolean
      {
         return this.auto_launch_flag$field;
      }
      
      public function clearAutoLaunchWithStartupFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.auto_launch_with_startup_flag$field = new Boolean();
      }
      
      public function get hasAutoLaunchWithStartupFlag() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set autoLaunchWithStartupFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.auto_launch_with_startup_flag$field = param1;
      }
      
      public function get autoLaunchWithStartupFlag() : Boolean
      {
         return this.auto_launch_with_startup_flag$field;
      }
      
      public function clearTgpBoxFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.tgp_box_flag$field = new Boolean();
      }
      
      public function get hasTgpBoxFlag() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set tgpBoxFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.tgp_box_flag$field = param1;
      }
      
      public function get tgpBoxFlag() : Boolean
      {
         return this.tgp_box_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTgpFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.tgp_flag$field);
         }
         if(this.hasAutoLaunchFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_launch_flag$field);
         }
         if(this.hasAutoLaunchWithStartupFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_launch_with_startup_flag$field);
         }
         if(this.hasTgpBoxFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_BOOL(param1,this.tgp_box_flag$field);
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
