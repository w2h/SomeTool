package com.tencent.morefun.naruto.util
{
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getDefinitionByName;
   
   public class XMLUtil
   {
      
      private static const baseType:Array = ["int","Number","String","uint","Boolean","null"];
       
      public function XMLUtil()
      {
         super();
      }
      
      public static function object2xml(param1:Object) : XML
      {
         var _loc2_:String = null;
         _loc2_ = getObjectAttributeStr(param1);
         return new XML(_loc2_);
      }
      
      private static function getObjectAttributeStr(param1:Object) : String
      {
         var _loc2_:String = null;
         var _loc3_:ByteArray = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:* = undefined;
         var _loc9_:* = 0;
         if(param1 == null)
         {
            return "";
         }
         _loc3_ = new ByteArray();
         _loc3_.writeObject(param1);
         _loc3_.position = 0;
         _loc4_ = _loc3_.readObject();
         _loc6_ = getQualifiedClassName(param1).replace("::",".");
         if(_loc6_ == null)
         {
            return "";
         }
         if(baseType.indexOf(_loc6_) != -1)
         {
            _loc2_ = "<" + _loc6_ + " type= \"" + _loc6_ + "\" value=\"" + param1 + "\"/>";
            return _loc2_;
         }
         _loc2_ = "<" + _loc6_ + " type= \"" + _loc6_ + "\">";
         for(_loc8_ in _loc4_)
         {
            if(baseType.indexOf(getQualifiedClassName(param1[_loc8_])) != -1)
            {
               _loc2_ = _loc2_ + ("<" + _loc8_ + " type=\"" + getQualifiedClassName(param1[_loc8_]) + "\" value=\"" + param1[_loc8_] + "\"/>");
            }
            else if(getQualifiedClassName(param1[_loc8_]) == "Array")
            {
               _loc5_ = param1[_loc8_];
               _loc2_ = _loc2_ + ("<" + _loc8_ + " type=\"" + getQualifiedClassName(param1[_loc8_]) + "\">");
               _loc9_ = 0;
               while(_loc9_ < _loc5_.length)
               {
                  _loc2_ = _loc2_ + getObjectAttributeStr(_loc5_[_loc9_]);
                  _loc9_++;
               }
               _loc2_ = _loc2_ + ("</" + _loc8_ + ">");
            }
            else
            {
               _loc7_ = getQualifiedClassName(param1[_loc8_]).replace("::",".");
               _loc2_ = _loc2_ + ("<" + _loc8_ + " type=\"" + _loc7_ + "\">");
               _loc2_ = _loc2_ + getObjectAttributeStr(param1[_loc8_]);
               _loc2_ = _loc2_ + ("</" + _loc8_ + ">");
            }
         }
         _loc2_ = _loc2_ + ("</" + _loc6_ + ">");
         return _loc2_;
      }
      
      public static function xml2object(param1:XML) : Object
      {
         var _loc2_:Class = null;
         var _loc3_:Object = null;
         _loc2_ = getDefinitionByName(param1.@type) as Class;
         _loc3_ = new _loc2_();
         parseObject(param1,_loc3_);
         return _loc3_;
      }
      
      private static function parseObject(param1:XML, param2:Object) : void
      {
         var _loc3_:Class = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         var _loc8_:XMLList = null;
         var _loc9_:XML = null;
         var _loc10_:XMLList = null;
         var _loc11_:Object = null;
         var _loc12_:* = undefined;
         var _loc13_:* = 0;
         _loc10_ = param1.children();
         for each(_loc12_ in _loc10_)
         {
            _loc4_ = String(_loc12_.@type);
            _loc5_ = _loc12_.name();
            if(baseType.indexOf(_loc4_) != -1)
            {
               param2[_loc5_] = baseValueTransiform(_loc12_.@value,_loc4_);
            }
            else if(_loc4_ == "Array")
            {
               _loc6_ = [];
               _loc8_ = _loc12_.children();
               _loc13_ = 0;
               while(_loc13_ < _loc8_.length())
               {
                  _loc9_ = _loc8_[_loc13_];
                  _loc4_ = _loc9_.@type;
                  if(baseType.indexOf(_loc4_) != -1)
                  {
                     _loc6_.push(baseValueTransiform(_loc9_.@value,_loc4_));
                  }
                  else
                  {
                     _loc3_ = getDefinitionByName(_loc4_) as Class;
                     _loc7_ = new _loc3_();
                     parseObject(_loc9_,_loc7_);
                     _loc6_.push(_loc7_);
                  }
                  _loc13_++;
               }
               param2[_loc5_] = _loc6_;
            }
            else
            {
               _loc3_ = getDefinitionByName(_loc4_) as Class;
               _loc11_ = new _loc3_();
               param2[_loc5_] = _loc11_;
               parseObject(_loc12_.children()[0],_loc11_);
            }
         }
      }
      
      private static function baseValueTransiform(param1:String, param2:String) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
