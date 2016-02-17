package org.as3commons.bytecode.util
{
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import org.as3commons.lang.StringUtils;
   
   public final class AbcSpec
   {
      
      public static const U30:org.as3commons.bytecode.util.ReadWritePair = new org.as3commons.bytecode.util.ReadWritePair(readU30,writeU30);
      
      public static const U8:org.as3commons.bytecode.util.ReadWritePair = new org.as3commons.bytecode.util.ReadWritePair(readU8,writeU8);
      
      public static const S24:org.as3commons.bytecode.util.ReadWritePair = new org.as3commons.bytecode.util.ReadWritePair(readS24,writeS24);
      
      public static const S32:org.as3commons.bytecode.util.ReadWritePair = new org.as3commons.bytecode.util.ReadWritePair(readS32,writeS32);
      
      public static const S24_ARRAY:org.as3commons.bytecode.util.ReadWritePair = new org.as3commons.bytecode.util.ReadWritePair(readS24,writeS24);
      
      public static const UNSIGNED_BYTE:org.as3commons.bytecode.util.ReadWritePair = new org.as3commons.bytecode.util.ReadWritePair(readUnsigned,writeU8);
      
      private static const __VALUE_OUT_OF_RANGE_ERROR:String = "Value out of range, expected {0}, but got {1}";
      
      public static const TWOHUNDRED_FIFTYFIVE:uint = 255;
      
      public static const EIGHT:uint = 8;
      
      public static const SIXTEEN:uint = 16;
      
      public static const MAX_U8:uint = 256;
      
      public static const MAX_U16:uint = 65536;
      
      public static const MAX_U30:uint = 1073741824;
      
      public static const SEVEN:Number = 7;
      
      private static const FOURTEEN:Number = 14;
      
      private static const TWENTY_ONE:Number = 21;
      
      private static const TWENTY_EIGHT:Number = 28;
      
      private static const MAX_S24:Number = 8388607;
      
      private static var _illegalCount:int = 0;
       
      public function AbcSpec()
      {
         super();
      }
      
      public static function readUnsigned(param1:ByteArray) : uint
      {
         return param1.readUnsignedByte();
      }
      
      public static function newByteArray() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.endian = Endian.LITTLE_ENDIAN;
         return _loc1_;
      }
      
      public static function readU8(param1:ByteArray) : uint
      {
         var _loc2_:uint = TWOHUNDRED_FIFTYFIVE & param1[param1.position++];
         return _loc2_;
      }
      
      public static function skipU8(param1:ByteArray) : void
      {
         param1.position++;
      }
      
      public static function readU16(param1:ByteArray) : uint
      {
         var _loc2_:uint = readU8(param1) | readU8(param1) << EIGHT;
         return _loc2_;
      }
      
      public static function skipU16(param1:ByteArray) : void
      {
         param1.position = param1.position + 2;
      }
      
      public static function readS24(param1:ByteArray) : int
      {
         var _loc2_:int = param1.readUnsignedByte();
         _loc2_ = _loc2_ | param1.readUnsignedByte() << EIGHT | param1.readByte() << SIXTEEN;
         return _loc2_;
      }
      
      public static function skipS24(param1:ByteArray) : void
      {
         param1.readUnsignedByte();
         param1.readUnsignedByte();
         param1.readByte();
      }
      
      public static function readS32(param1:ByteArray) : int
      {
         return readU32(param1);
      }
      
      public static function skipS32(param1:ByteArray) : void
      {
         skipU32(param1);
      }
      
      public static function readU30(param1:ByteArray) : uint
      {
         var _loc2_:uint = readU32(param1) & 1073741823;
         return _loc2_;
      }
      
      public static function skipU30(param1:ByteArray) : void
      {
         skipU32(param1);
      }
      
      public static function readStringInfo(param1:ByteArray) : String
      {
         var _loc2_:uint = readU32(param1);
         var _loc3_:String = param1.readUTFBytes(_loc2_);
         if(_loc2_ != _loc3_.length)
         {
            _loc3_ = "UTF8_BAD" + (_illegalCount++).toString();
         }
         return _loc3_;
      }
      
      public static function skipStringInfo(param1:ByteArray) : void
      {
         param1.position = param1.position + readU32(param1);
      }
      
      public static function readD64(param1:ByteArray) : Number
      {
         return param1.readDouble();
      }
      
      public static function skipD64(param1:ByteArray) : void
      {
         param1.readDouble();
      }
      
      public static function readU32(param1:ByteArray) : uint
      {
         var _loc2_:int = param1.readUnsignedByte();
         if(!(_loc2_ & 128))
         {
            return _loc2_;
         }
         var _loc3_:* = param1.readUnsignedByte() << SEVEN;
         _loc2_ = _loc2_ & 127 | _loc3_;
         if(!(_loc2_ & 16384))
         {
            return _loc2_;
         }
         _loc3_ = param1.readUnsignedByte() << FOURTEEN;
         _loc2_ = _loc2_ & 16383 | _loc3_;
         if(!(_loc2_ & 2097152))
         {
            return _loc2_;
         }
         _loc3_ = param1.readUnsignedByte() << TWENTY_ONE;
         _loc2_ = _loc2_ & 2097151 | _loc3_;
         if(!(_loc2_ & 268435456))
         {
            return _loc2_;
         }
         _loc3_ = param1.readUnsignedByte() << TWENTY_EIGHT;
         return _loc2_ & 268435455 | _loc3_;
      }
      
      public static function skipU32(param1:ByteArray) : void
      {
         var _loc2_:int = param1.readUnsignedByte();
         if(!(_loc2_ & 128))
         {
            return;
         }
         var _loc3_:* = param1.readUnsignedByte() << SEVEN;
         _loc2_ = _loc2_ & 127 | _loc3_;
         if(!(_loc2_ & 16384))
         {
            return;
         }
         _loc3_ = param1.readUnsignedByte() << FOURTEEN;
         _loc2_ = _loc2_ & 16383 | _loc3_;
         if(!(_loc2_ & 2097152))
         {
            return;
         }
         _loc3_ = param1.readUnsignedByte() << TWENTY_ONE;
         _loc2_ = _loc2_ & 2097151 | _loc3_;
         if(!(_loc2_ & 268435456))
         {
            return;
         }
         param1.readUnsignedByte();
      }
      
      public static function writeU32(param1:uint, param2:ByteArray) : void
      {
         if(param1 < 128 && param1 > -1)
         {
            param2.writeByte(param1);
         }
         else if(param1 < 16384 && param1 > -1)
         {
            param2.writeByte(param1 & 127 | 128);
            param2.writeByte(param1 >> SEVEN & 127);
         }
         else if(param1 < 2097152 && param1 > -1)
         {
            param2.writeByte(param1 & 127 | 128);
            param2.writeByte(param1 >> SEVEN | 128);
            param2.writeByte(param1 >> FOURTEEN & 127);
         }
         else if(param1 < 268435456 && param1 > -1)
         {
            param2.writeByte(param1 & 127 | 128);
            param2.writeByte(param1 >> SEVEN | 128);
            param2.writeByte(param1 >> FOURTEEN | 128);
            param2.writeByte(param1 >> TWENTY_ONE & 127);
         }
         else
         {
            param2.writeByte(param1 & 127 | 128);
            param2.writeByte(param1 >> SEVEN | 128);
            param2.writeByte(param1 >> FOURTEEN | 128);
            param2.writeByte(param1 >> TWENTY_ONE | 128);
            param2.writeByte(param1 >> TWENTY_EIGHT & 15);
         }
      }
      
      public static function writeU8(param1:uint, param2:ByteArray) : void
      {
         param2.writeByte(param1);
      }
      
      public static function writeU16(param1:uint, param2:ByteArray) : void
      {
         param2.writeByte(param1 & 255);
         param2.writeByte(param1 >> EIGHT & 255);
      }
      
      public static function writeS24(param1:int, param2:ByteArray) : void
      {
         var _loc3_:* = param1 & 255;
         param2.writeByte(_loc3_);
         _loc3_ = param1 >> EIGHT & 255;
         param2.writeByte(_loc3_);
         _loc3_ = param1 >> SIXTEEN & 255;
         param2.writeByte(_loc3_);
      }
      
      public static function writeU30(param1:uint, param2:ByteArray) : void
      {
         writeU32(param1,param2);
      }
      
      public static function writeS32(param1:int, param2:ByteArray) : void
      {
         writeU32(uint(param1),param2);
      }
      
      public static function writeD64(param1:Number, param2:ByteArray) : void
      {
         param2.writeDouble(param1);
      }
      
      public static function writeUTFBytes(param1:String, param2:ByteArray) : void
      {
         param2.writeUTFBytes(param1);
      }
      
      public static function writeStringInfo(param1:String, param2:ByteArray) : void
      {
         var _loc3_:ByteArray = null;
         if(param1.length > 0)
         {
            _loc3_ = new ByteArray();
            _loc3_.endian = Endian.BIG_ENDIAN;
            _loc3_.writeUTFBytes(param1);
            _loc3_.position = 0;
            writeU30(_loc3_.length,param2);
            param2.writeBytes(_loc3_);
         }
         else
         {
            writeU30(0,param2);
         }
      }
      
      public static function assertWithinRange(param1:Boolean, param2:Number, param3:Number) : void
      {
         if(!param1)
         {
            throw new Error(StringUtils.substitute(__VALUE_OUT_OF_RANGE_ERROR,param2,param3));
         }
      }
   }
}
