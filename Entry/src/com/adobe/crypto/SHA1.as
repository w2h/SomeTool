package com.adobe.crypto
{
   import flash.utils.ByteArray;
   import com.adobe.utils.IntUtil;
   import mx.utils.Base64Encoder;
   
   public class SHA1
   {
      
      public static var digest:ByteArray;
       
      public function SHA1()
      {
         super();
      }
      
      private static function createBlocksFromByteArray(data:ByteArray) : Array
      {
         var oldPosition:int = data.position;
         data.position = 0;
         var blocks:Array = new Array();
         var len:int = data.length * 8;
         var mask:int = 255;
         for(var i:int = 0; i < len; i = i + 8)
         {
            blocks[i >> 5] = blocks[i >> 5] | (data.readByte() & mask) << 24 - i % 32;
         }
         blocks[len >> 5] = blocks[len >> 5] | 128 << 24 - len % 32;
         blocks[(len + 64 >> 9 << 4) + 15] = len;
         data.position = oldPosition;
         return blocks;
      }
      
      private static function hashBlocks(blocks:Array) : ByteArray
      {
         var temp:* = 0;
         var a:* = 0;
         var b:* = 0;
         var c:* = 0;
         var d:* = 0;
         var e:* = 0;
         var t:* = 0;
         var h0:int = 1732584193;
         var h1:int = 4.023233417E9;
         var h2:int = 2.562383102E9;
         var h3:int = 271733878;
         var h4:int = 3.28537752E9;
         var len:int = blocks.length;
         var w:Array = new Array(80);
         for(var i:int = 0; i < len; i = i + 16)
         {
            a = h0;
            b = h1;
            c = h2;
            d = h3;
            e = h4;
            for(t = 0; t < 20; t++)
            {
               if(t < 16)
               {
                  w[t] = blocks[i + t];
               }
               else
               {
                  temp = w[t - 3] ^ w[t - 8] ^ w[t - 14] ^ w[t - 16];
                  w[t] = temp << 1 | temp >>> 31;
               }
               temp = (a << 5 | a >>> 27) + (b & c | ~b & d) + e + int(w[t]) + 1518500249;
               e = d;
               d = c;
               c = b << 30 | b >>> 2;
               b = a;
               a = temp;
            }
            while(t < 40)
            {
               temp = w[t - 3] ^ w[t - 8] ^ w[t - 14] ^ w[t - 16];
               w[t] = temp << 1 | temp >>> 31;
               temp = (a << 5 | a >>> 27) + (b ^ c ^ d) + e + int(w[t]) + 1859775393;
               e = d;
               d = c;
               c = b << 30 | b >>> 2;
               b = a;
               a = temp;
               t++;
            }
            while(t < 60)
            {
               temp = w[t - 3] ^ w[t - 8] ^ w[t - 14] ^ w[t - 16];
               w[t] = temp << 1 | temp >>> 31;
               temp = (a << 5 | a >>> 27) + (b & c | b & d | c & d) + e + int(w[t]) + 2.400959708E9;
               e = d;
               d = c;
               c = b << 30 | b >>> 2;
               b = a;
               a = temp;
               t++;
            }
            while(t < 80)
            {
               temp = w[t - 3] ^ w[t - 8] ^ w[t - 14] ^ w[t - 16];
               w[t] = temp << 1 | temp >>> 31;
               temp = (a << 5 | a >>> 27) + (b ^ c ^ d) + e + int(w[t]) + 3.395469782E9;
               e = d;
               d = c;
               c = b << 30 | b >>> 2;
               b = a;
               a = temp;
               t++;
            }
            h0 = h0 + a;
            h1 = h1 + b;
            h2 = h2 + c;
            h3 = h3 + d;
            h4 = h4 + e;
         }
         var byteArray:ByteArray = new ByteArray();
         byteArray.writeInt(h0);
         byteArray.writeInt(h1);
         byteArray.writeInt(h2);
         byteArray.writeInt(h3);
         byteArray.writeInt(h4);
         byteArray.position = 0;
         digest = new ByteArray();
         digest.writeBytes(byteArray);
         digest.position = 0;
         return byteArray;
      }
      
      private static function createBlocksFromString(s:String) : Array
      {
         var blocks:Array = new Array();
         var len:int = s.length * 8;
         var mask:int = 255;
         for(var i:int = 0; i < len; i = i + 8)
         {
            blocks[i >> 5] = blocks[i >> 5] | (s.charCodeAt(i / 8) & mask) << 24 - i % 32;
         }
         blocks[len >> 5] = blocks[len >> 5] | 128 << 24 - len % 32;
         blocks[(len + 64 >> 9 << 4) + 15] = len;
         return blocks;
      }
      
      public static function hashBytes(data:ByteArray) : String
      {
         var blocks:Array = SHA1.createBlocksFromByteArray(data);
         var byteArray:ByteArray = hashBlocks(blocks);
         return IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true);
      }
      
      public static function hash(s:String) : String
      {
         var blocks:Array = createBlocksFromString(s);
         var byteArray:ByteArray = hashBlocks(blocks);
         return IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true);
      }
      
      public static function hashToBase64(s:String) : String
      {
         var byte:uint = 0;
         var blocks:Array = SHA1.createBlocksFromString(s);
         var byteArray:ByteArray = hashBlocks(blocks);
         var charsInByteArray:String = "";
         byteArray.position = 0;
         for(var j:int = 0; j < byteArray.length; j++)
         {
            byte = byteArray.readUnsignedByte();
            charsInByteArray = charsInByteArray + String.fromCharCode(byte);
         }
         var encoder:Base64Encoder = new Base64Encoder();
         encoder.encode(charsInByteArray);
         return encoder.flush();
      }
   }
}
