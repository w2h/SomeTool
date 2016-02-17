package serverProto.inc
{
   import com.netease.netease.protobuf.*;
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.used_by_generated_code;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class ProtoDiamondInfo extends Message
   {
      
      public static const BLUE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoDiamondInfo.blue_level","blueLevel",1 << 3 | WireType.VARINT);
      
      public static const BLUE_COMMON:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.blue_common","blueCommon",2 << 3 | WireType.VARINT);
      
      public static const BLUE_YEAR:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.blue_year","blueYear",3 << 3 | WireType.VARINT);
      
      public static const BLUE_SUPER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.blue_super","blueSuper",4 << 3 | WireType.VARINT);
      
      public static const YELLOW_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoDiamondInfo.yellow_level","yellowLevel",5 << 3 | WireType.VARINT);
      
      public static const YELLOW_COMMON:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.yellow_common","yellowCommon",6 << 3 | WireType.VARINT);
      
      public static const YELLOW_YEAR:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.yellow_year","yellowYear",7 << 3 | WireType.VARINT);
      
      public static const YELLOW_SUPER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.yellow_super","yellowSuper",8 << 3 | WireType.VARINT);
      
      public static const QQ_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoDiamondInfo.qq_level","qqLevel",9 << 3 | WireType.VARINT);
      
      public static const QQ_COMMON:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.qq_common","qqCommon",10 << 3 | WireType.VARINT);
      
      public static const QQ_YEAR:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.qq_year","qqYear",11 << 3 | WireType.VARINT);
      
      public static const QQ_SUPER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.inc.ProtoDiamondInfo.qq_super","qqSuper",12 << 3 | WireType.VARINT);
       
      private var blue_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var blue_common$field:Boolean;
      
      private var blue_year$field:Boolean;
      
      private var blue_super$field:Boolean;
      
      private var yellow_level$field:int;
      
      private var yellow_common$field:Boolean;
      
      private var yellow_year$field:Boolean;
      
      private var yellow_super$field:Boolean;
      
      private var qq_level$field:int;
      
      private var qq_common$field:Boolean;
      
      private var qq_year$field:Boolean;
      
      private var qq_super$field:Boolean;
      
      public function ProtoDiamondInfo()
      {
         super();
      }
      
      public function clearBlueLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.blue_level$field = new int();
      }
      
      public function get hasBlueLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set blueLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.blue_level$field = param1;
      }
      
      public function get blueLevel() : int
      {
         return this.blue_level$field;
      }
      
      public function clearBlueCommon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.blue_common$field = new Boolean();
      }
      
      public function get hasBlueCommon() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set blueCommon(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.blue_common$field = param1;
      }
      
      public function get blueCommon() : Boolean
      {
         return this.blue_common$field;
      }
      
      public function clearBlueYear() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.blue_year$field = new Boolean();
      }
      
      public function get hasBlueYear() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set blueYear(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.blue_year$field = param1;
      }
      
      public function get blueYear() : Boolean
      {
         return this.blue_year$field;
      }
      
      public function clearBlueSuper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.blue_super$field = new Boolean();
      }
      
      public function get hasBlueSuper() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set blueSuper(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.blue_super$field = param1;
      }
      
      public function get blueSuper() : Boolean
      {
         return this.blue_super$field;
      }
      
      public function clearYellowLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.yellow_level$field = new int();
      }
      
      public function get hasYellowLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set yellowLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.yellow_level$field = param1;
      }
      
      public function get yellowLevel() : int
      {
         return this.yellow_level$field;
      }
      
      public function clearYellowCommon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.yellow_common$field = new Boolean();
      }
      
      public function get hasYellowCommon() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set yellowCommon(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.yellow_common$field = param1;
      }
      
      public function get yellowCommon() : Boolean
      {
         return this.yellow_common$field;
      }
      
      public function clearYellowYear() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.yellow_year$field = new Boolean();
      }
      
      public function get hasYellowYear() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set yellowYear(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.yellow_year$field = param1;
      }
      
      public function get yellowYear() : Boolean
      {
         return this.yellow_year$field;
      }
      
      public function clearYellowSuper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.yellow_super$field = new Boolean();
      }
      
      public function get hasYellowSuper() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set yellowSuper(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.yellow_super$field = param1;
      }
      
      public function get yellowSuper() : Boolean
      {
         return this.yellow_super$field;
      }
      
      public function clearQqLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.qq_level$field = new int();
      }
      
      public function get hasQqLevel() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set qqLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.qq_level$field = param1;
      }
      
      public function get qqLevel() : int
      {
         return this.qq_level$field;
      }
      
      public function clearQqCommon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.qq_common$field = new Boolean();
      }
      
      public function get hasQqCommon() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set qqCommon(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.qq_common$field = param1;
      }
      
      public function get qqCommon() : Boolean
      {
         return this.qq_common$field;
      }
      
      public function clearQqYear() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.qq_year$field = new Boolean();
      }
      
      public function get hasQqYear() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set qqYear(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.qq_year$field = param1;
      }
      
      public function get qqYear() : Boolean
      {
         return this.qq_year$field;
      }
      
      public function clearQqSuper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.qq_super$field = new Boolean();
      }
      
      public function get hasQqSuper() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set qqSuper(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.qq_super$field = param1;
      }
      
      public function get qqSuper() : Boolean
      {
         return this.qq_super$field;
      }
      
      override used_by_generated_code function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBlueLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.blue_level$field);
         }
         if(this.hasBlueCommon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.blue_common$field);
         }
         if(this.hasBlueYear)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.blue_year$field);
         }
         if(this.hasBlueSuper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_BOOL(param1,this.blue_super$field);
         }
         if(this.hasYellowLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.yellow_level$field);
         }
         if(this.hasYellowCommon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.yellow_common$field);
         }
         if(this.hasYellowYear)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_BOOL(param1,this.yellow_year$field);
         }
         if(this.hasYellowSuper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_BOOL(param1,this.yellow_super$field);
         }
         if(this.hasQqLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.qq_level$field);
         }
         if(this.hasQqCommon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_BOOL(param1,this.qq_common$field);
         }
         if(this.hasQqYear)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_BOOL(param1,this.qq_year$field);
         }
         if(this.hasQqSuper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_BOOL(param1,this.qq_super$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override used_by_generated_code function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
