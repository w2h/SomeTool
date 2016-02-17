package org.as3commons.bytecode.util
{
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   public final class SWFSpec
   {
      
      private static var _bitbuff:uint;
      
      private static var _bitleft:uint;
      
      public static const FLOAT16_EXPONENT_BASE:uint = 15;
      
      private static const FIXED_DIVISION:uint = 65536;
      
      private static const FIXED8_DIVISION:uint = 256;
      
      private static const THIRTY_TWO:uint = 32;
      
      private static const HEX_ZERO:uint = 0;
      
      private static const SIXTEEN:uint = 16;
       
      public function SWFSpec()
      {
         super();
      }
      
      public static function flushBits() : void
      {
         _bitbuff = _bitleft = 0;
      }
      
      public static function readBitRect(param1:ByteArray) : Rectangle
      {
         var _loc2_:uint = readUB(param1,5);
         var _loc3_:Rectangle = new Rectangle();
         _loc3_.x = readSB(param1,_loc2_);
         _loc3_.width = readSB(param1,_loc2_);
         _loc3_.y = readSB(param1,_loc2_);
         _loc3_.height = readSB(param1,_loc2_);
         flushBits();
         return _loc3_;
      }
      
      public static function writeBitRect(param1:ByteArray, param2:Rectangle) : void
      {
         var _loc3_:uint = getMinSBits(param2.x,param2.width,param2.y,param2.height);
         flushBits();
         writeUB(param1,5,_loc3_);
         writeSB(param1,_loc3_,param2.x);
         writeSB(param1,_loc3_,param2.width);
         writeSB(param1,_loc3_,param2.y);
         writeSB(param1,_loc3_,param2.height);
      }
      
      public static function readSI8(param1:ByteArray) : int
      {
         flushBits();
         return param1.readByte();
      }
      
      public static function writeSI8(param1:ByteArray, param2:int) : void
      {
         flushBits();
         param1.writeByte(param2);
      }
      
      public static function readSI16(param1:ByteArray) : int
      {
         flushBits();
         return param1.readShort();
      }
      
      public static function writeSI16(param1:ByteArray, param2:int) : void
      {
         flushBits();
         param1.writeShort(param2);
      }
      
      public static function readSI32(param1:ByteArray) : int
      {
         flushBits();
         return param1.readInt();
      }
      
      public static function writeSI32(param1:ByteArray, param2:int) : void
      {
         flushBits();
         param1.writeInt(param2);
      }
      
      public static function readUI8(param1:ByteArray) : uint
      {
         flushBits();
         return param1.readUnsignedByte();
      }
      
      public static function writeUI8(param1:ByteArray, param2:uint) : void
      {
         flushBits();
         param1.writeByte(param2);
      }
      
      public static function readUI16(param1:ByteArray) : uint
      {
         flushBits();
         return param1.readUnsignedShort();
      }
      
      public static function writeUI16(param1:ByteArray, param2:uint) : void
      {
         flushBits();
         param1.writeShort(param2);
      }
      
      public static function readUI24(param1:ByteArray) : uint
      {
         flushBits();
         var _loc2_:uint = param1.readUnsignedShort();
         var _loc3_:uint = param1.readUnsignedByte();
         return _loc3_ << SIXTEEN | _loc2_;
      }
      
      public static function writeUI24(param1:ByteArray, param2:uint) : void
      {
         flushBits();
         param1.writeShort(param2 & 65535);
         param1.writeByte(param2 >> SIXTEEN);
      }
      
      public static function readUI32(param1:ByteArray) : uint
      {
         flushBits();
         return param1.readUnsignedInt();
      }
      
      public static function writeUI32(param1:ByteArray, param2:uint) : void
      {
         flushBits();
         param1.writeUnsignedInt(param2);
      }
      
      public static function readFIXED(param1:ByteArray) : Number
      {
         flushBits();
         return param1.readInt() / FIXED_DIVISION;
      }
      
      public static function writeFIXED(param1:ByteArray, param2:Number) : void
      {
         flushBits();
         param1.writeInt(int(param2 * FIXED_DIVISION));
      }
      
      public static function readFIXED8(param1:ByteArray) : Number
      {
         flushBits();
         return param1.readShort() / FIXED8_DIVISION;
      }
      
      public static function writeFIXED8(param1:ByteArray, param2:Number) : void
      {
         flushBits();
         param1.writeShort(int(param2 * FIXED8_DIVISION));
      }
      
      public static function readFLOAT(param1:ByteArray) : Number
      {
         flushBits();
         return param1.readFloat();
      }
      
      public static function writeFLOAT(param1:ByteArray, param2:Number) : void
      {
         flushBits();
         param1.writeFloat(param2);
      }
      
      public static function readDOUBLE(param1:ByteArray) : Number
      {
         flushBits();
         return param1.readDouble();
      }
      
      public static function writeDOUBLE(param1:ByteArray, param2:Number) : void
      {
         flushBits();
         param1.writeDouble(param2);
      }
      
      public static function readBoolean(param1:ByteArray) : Boolean
      {
         var _loc2_:uint = readUB(param1);
         return _loc2_ == 1;
      }
      
      public static function writeBoolean(param1:ByteArray, param2:Boolean) : void
      {
         writeUB(param1,1,param2?1:0);
      }
      
      public static function readUB(param1:ByteArray, param2:uint = 1) : uint
      {
         var _loc4_:* = 0;
         if(param2 == 0)
         {
            return 0;
         }
         if(_bitleft == 0)
         {
            _bitbuff = readUI8(param1);
            _bitleft = 8;
         }
         var _loc3_:uint = 0;
         while(true)
         {
            _loc4_ = param2 - _bitleft;
            if(_loc4_ > 0)
            {
               _loc3_ = _loc3_ | _bitbuff << _loc4_;
               var param2:uint = param2 - _bitleft;
               _bitbuff = readUI8(param1);
               _bitleft = 8;
               continue;
            }
            break;
         }
         _loc3_ = _loc3_ | _bitbuff >> -_loc4_;
         _bitleft = _bitleft - param2;
         _bitbuff = _bitbuff & 255 >> 8 - _bitleft;
         return _loc3_;
      }
      
      public static function writeUB(param1:ByteArray, param2:uint, param3:uint) : void
      {
         if(param2 == 0)
         {
            return;
         }
         if(_bitleft == 0)
         {
            writeUI8(param1,HEX_ZERO);
            _bitbuff = 0;
            _bitleft = 8;
         }
         while(param2 > _bitleft)
         {
            param1[param1.position - 1] = (_bitbuff | param3 << THIRTY_TWO - param2 >>> THIRTY_TWO - _bitleft) & 255;
            var param2:uint = param2 - _bitleft;
            writeUI8(param1,HEX_ZERO);
            _bitbuff = 0;
            _bitleft = 8;
         }
         param1[param1.position - 1] = (_bitbuff = _bitbuff | param3 << THIRTY_TWO - param2 >>> THIRTY_TWO - _bitleft) & 255;
         _bitleft = _bitleft - param2;
      }
      
      public static function readSB(param1:ByteArray, param2:uint) : int
      {
         var _loc3_:uint = THIRTY_TWO - param2;
         return int(readUB(param1,param2) << _loc3_) >> _loc3_;
      }
      
      public static function writeSB(param1:ByteArray, param2:uint, param3:int) : void
      {
         writeUB(param1,param2,param3 | (param3 < 0?2.147483648E9:0) >> THIRTY_TWO - param2);
      }
      
      public static function readFB(param1:ByteArray, param2:uint) : Number
      {
         return Number(readSB(param1,param2)) / FIXED_DIVISION;
      }
      
      public static function writeFB(param1:ByteArray, param2:uint, param3:Number) : void
      {
         writeSB(param1,param2,param3 * FIXED_DIVISION);
      }
      
      public static function readString(param1:ByteArray) : String
      {
         var _loc2_:Array = [];
         var _loc3_:uint = param1.readUnsignedByte();
         while(_loc3_ > 0)
         {
            _loc2_[_loc2_.length] = String.fromCharCode(_loc3_);
            _loc3_ = param1.readUnsignedByte();
         }
         flushBits();
         return _loc2_.join("");
      }
      
      public static function skipString(param1:ByteArray) : void
      {
         var _loc2_:uint = param1.readUnsignedByte();
         while(_loc2_ > 0)
         {
            _loc2_ = param1.readUnsignedByte();
         }
         flushBits();
      }
      
      public static function writeString(param1:ByteArray, param2:String) : void
      {
         if(param2 && param2.length > 0)
         {
            param1.writeUTFBytes(param2);
         }
         param1.writeByte(0);
      }
      
      public static function getMinBits(param1:uint, param2:uint = 0, param3:uint = 0, param4:uint = 0) : uint
      {
         var _loc5_:uint = param1 | param2 | param3 | param4;
         var _loc6_:uint = 1;
         do
         {
            _loc5_ = _loc5_ >>> 1;
            _loc6_++;
         }
         while(_loc5_ != 0);
         
         return _loc6_;
      }
      
      public static function getMinSBits(param1:int, param2:int = 0, param3:int = 0, param4:int = 0) : uint
      {
         return getMinBits(Math.abs(param1),Math.abs(param2),Math.abs(param3),Math.abs(param4));
      }
   }
}
