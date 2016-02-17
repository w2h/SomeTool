package com.tencent.morefun.naruto.util
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   public class XString
   {
      
      private static var __Vars:Object;
      
      private static var __Exp:RegExp = new RegExp("\\{([Z-z$_][^\\}\\{]+)\\}","g");
      
      public static var CHARSET:String = "utf-8";
      
      private static var byteBuff:com.tencent.morefun.naruto.util.ByteBuffer = new com.tencent.morefun.naruto.util.ByteBuffer();
       
      public function XString()
      {
         super();
      }
      
      public static function Trim(param1:String) : String
      {
         return param1.replace(new RegExp("(^\\s*)|(\\s*$)","g"),"");
      }
      
      public static function LTrim(param1:String) : String
      {
         return param1.replace(new RegExp("(^\\s*)","g"),"");
      }
      
      public static function RTrim(param1:String) : String
      {
         return param1.replace(new RegExp("(\\s*$)","g"),"");
      }
      
      public static function trimAll(param1:String) : String
      {
         return param1.replace(new RegExp(" ","g"),"");
      }
      
      public static function getFileName(param1:String) : String
      {
         var _loc2_:int = param1.lastIndexOf("/");
         if(_loc2_ == -1)
         {
            _loc2_ = param1.lastIndexOf("\\");
         }
         return param1.substring(_loc2_ + 1,param1.length);
      }
      
      public static function equalsIgnoreCase(param1:String, param2:String) : Boolean
      {
         return param1.toLowerCase() == param2.toLowerCase();
      }
      
      public static function equals(param1:String, param2:String) : Boolean
      {
         return param1 == param2;
      }
      
      public static function isEmail(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var param1:String = XString.Trim(param1);
         var _loc2_:RegExp = new RegExp("(\\w|[_.\\-])+@((\\w|-)+\\.)+\\w{2,4}+");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function isNumber(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         return !isNaN(Number(param1));
      }
      
      public static function isDouble(param1:String) : Boolean
      {
         var param1:String = XString.Trim(param1);
         var _loc2_:RegExp = new RegExp("^[-\\+]?\\d+(\\.\\d+)?$");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function isInteger(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var param1:String = XString.Trim(param1);
         var _loc2_:RegExp = new RegExp("^[-\\+]?\\d+$");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function isEnglish(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var param1:String = XString.Trim(param1);
         var _loc2_:RegExp = new RegExp("^[A-Za-z]+$");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function isChinese(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var param1:String = XString.Trim(param1);
         var _loc2_:RegExp = new RegExp("^[Α-￥]+$");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function isDoubleChar(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var param1:String = XString.Trim(param1);
         var _loc2_:RegExp = new RegExp("^[^\\x00-\\xff]+$");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function hasChineseChar(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var param1:String = XString.Trim(param1);
         var _loc2_:RegExp = new RegExp("[^\\x00-\\xff]");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function hasAccountChar(param1:String, param2:uint = 15) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(param2 < 10)
         {
            var param2:uint = 15;
         }
         var param1:String = XString.Trim(param1);
         var _loc3_:RegExp = new RegExp("^[a-zA-Z0-9][a-zA-Z0-9_-]{0," + param2 + "}$","");
         var _loc4_:Object = _loc3_.exec(param1);
         if(_loc4_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function isURL(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var param1:String = XString.Trim(param1).toLowerCase();
         var _loc2_:RegExp = new RegExp("^http:\\/\\/[A-Za-z0-9]+\\.[A-Za-z0-9]+[\\/=\\?%\\-&_~`@[\\]\\’:+!]*([^<>\\\"\\\"])*$");
         var _loc3_:Object = _loc2_.exec(param1);
         if(_loc3_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function isWhitespace(param1:String) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function beginsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(0,param2.length);
      }
      
      public static function endsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(param1.length - 1,param2.length);
      }
      
      public static function remove(param1:String, param2:String) : String
      {
         return replace(param1,param2,"\"");
      }
      
      public static function replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function replaceAt(param1:String, param2:String, param3:int, param4:int) : String
      {
         var param3:int = Math.max(param3,0);
         var param4:int = Math.min(param4,param1.length);
         var _loc5_:String = param1.substr(0,param3);
         var _loc6_:String = param1.substr(param4,param1.length);
         return _loc5_ + param2 + _loc6_;
      }
      
      public static function removeAt(param1:String, param2:int, param3:int) : String
      {
         return replaceAt(param1,"",param2,param3);
      }
      
      public static function fixNewlines(param1:String) : String
      {
         return param1.replace(new RegExp("\\r\\n","gm"),"\n");
      }
      
      public static function TranArgs(param1:String, param2:Object) : String
      {
         if(param2 == null || param1.indexOf("{") == -1 || param1.indexOf("}") == -1)
         {
            return param1;
         }
         __Vars = param2;
         var param1:String = param1.replace(__Exp,__Method);
         __Vars = null;
         return param1;
      }
      
      private static function __Method(... rest) : String
      {
         return __Vars[rest[1]];
      }
      
      public static function DecodePoint(param1:String, param2:String = ",") : Point
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:int = param1.indexOf(param2);
         if(_loc3_ != -1)
         {
            _loc4_ = int(param1.substring(0,_loc3_));
            _loc5_ = int(param1.substring(_loc3_ + 1,param1.length));
            return new Point(_loc4_,_loc5_);
         }
         return null;
      }
      
      public static function DecodeRect(param1:String, param2:String = ",") : Rectangle
      {
         var _loc3_:int = param1.indexOf(param2);
         var _loc4_:int = param1.indexOf(param2,_loc3_ + 1);
         var _loc5_:int = param1.indexOf(param2,_loc4_ + 1);
         var _loc6_:int = int(param1.substring(0,_loc3_));
         var _loc7_:int = int(param1.substring(_loc3_ + 1,_loc4_));
         var _loc8_:int = int(param1.substring(_loc4_ + 1,_loc5_));
         var _loc9_:int = int(param1.substring(_loc5_ + 1,param1.length));
         return new Rectangle(_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      public static function ReadIP(param1:IDataInput) : String
      {
         var _loc2_:uint = param1.readUnsignedInt();
         return (_loc2_ & 255) + "." + (uint(_loc2_ >> 8) & 255) + "." + (uint(_loc2_ >> 16) & 255) + "." + (uint(_loc2_ >> 24) & 255);
      }
      
      public static function WriteIP(param1:IDataOutput, param2:String) : void
      {
         var _loc3_:Array = param2.split(".");
         var _loc4_:uint = uint(_loc3_[0]) & 255 | uint(_loc3_[1]) & 255 << 8 | uint(_loc3_[2]) & 255 << 16 | uint(_loc3_[3]) & 255 << 24;
         param1.writeUnsignedInt(_loc4_);
      }
      
      public static function ReadChars(param1:IDataInput, param2:int, param3:String = "") : String
      {
         var _loc5_:* = 0;
         if(param3 == "")
         {
            var param3:String = CHARSET;
         }
         return param1.readMultiByte(param2,param3);
      }
      
      public static function WriteChars(param1:IDataOutput, param2:String, param3:int) : void
      {
         var _loc4_:* = 0;
         byteBuff.allocate(param3);
         byteBuff.writeMultiByte(param2,CHARSET);
         if(param3 == 0)
         {
            param1.writeShort(byteBuff.position);
         }
         param1.writeBytes(byteBuff,0,byteBuff.position);
         if(param3 > 0)
         {
            _loc4_ = param3 - byteBuff.position;
            while(_loc4_ > 0)
            {
               param1.writeByte(0);
               _loc4_--;
            }
         }
      }
      
      public static function WriteString(param1:IDataOutput, param2:String) : void
      {
         WriteChars(param1,param2,0);
      }
      
      public static function ReadString(param1:IDataInput) : String
      {
         var _loc2_:int = param1.readUnsignedShort();
         return param1.readMultiByte(_loc2_,CHARSET);
      }
      
      public function autoSetNull() : void
      {
         __Vars = null;
         CHARSET = null;
         byteBuff = null;
      }
   }
}
