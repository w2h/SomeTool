package com.netease.protobuf
{
   import flash.utils.IDataOutput;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import flash.errors.IOError;
   import flash.utils.ByteArray;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BYTES;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_BYTES;
   import flash.utils.getDefinitionByName;
   import flash.utils.IDataInput;
   
   public final class TextFormat
   {
      
      private static const allEnumValues:Dictionary = new Dictionary();
      
      private static const allMessageFields:Dictionary = new Dictionary();
       
      public function TextFormat()
      {
         super();
      }
      
      private static function printHex(param1:IDataOutput, param2:uint) : void
      {
         var _loc3_:String = param2.toString(16);
         param1.writeUTFBytes("00000000".substring(0,8 - _loc3_.length));
         param1.writeUTFBytes(_loc3_);
      }
      
      private static function printEnum(param1:IDataOutput, param2:int, param3:Class) : void
      {
         var _loc4_:Array = null;
         var _loc5_:XML = null;
         var _loc6_:XMLList = null;
         var _loc7_:String = null;
         if(param3 in allEnumValues)
         {
            _loc4_ = allEnumValues[param3];
         }
         else
         {
            _loc5_ = describeType(param3);
            _loc6_ = _loc5_.*.@name;
            _loc4_ = [];
            for each(_loc4_[param3[_loc7_]] in _loc6_)
            {
            }
            allEnumValues[param3] = _loc4_;
         }
         if(param2 in _loc4_)
         {
            param1.writeUTFBytes(_loc4_[param2]);
            return;
         }
         throw new IOError(param2 + " is invalid for " + _loc5_.@name);
      }
      
      private static function printBytes(param1:IDataOutput, param2:ByteArray) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function printString(param1:IDataOutput, param2:String) : void
      {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes(param2);
         printBytes(param1,_loc3_);
      }
      
      private static function printUnknownField(param1:IDataOutput, param2:uint, param3:Object, param4:PrintSetting, param5:String) : void
      {
         var _loc7_:* = 0;
         var _loc6_:Array = param3 as Array;
         if(_loc6_)
         {
            if(_loc6_.length > 0)
            {
               printSingleUnknownField(param1,param2,_loc6_[_loc7_],param4,param5);
               _loc7_ = 1;
               while(_loc7_ < _loc6_.length)
               {
                  param1.writeByte(param4.newLine);
                  printSingleUnknownField(param1,param2,_loc6_[_loc7_],param4,param5);
                  _loc7_++;
               }
            }
         }
         else
         {
            printSingleUnknownField(param1,param2,param3,param4,param5);
         }
      }
      
      private static function printSingleUnknownField(param1:IDataOutput, param2:uint, param3:Object, param4:PrintSetting, param5:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function printMessageFields(param1:IDataOutput, param2:Message, param3:PrintSetting, param4:String = "") : void
      {
         var isFirst:Boolean = false;
         var messageFields:XMLList = null;
         var fieldDescriptorName:String = null;
         var key:String = null;
         var description:XML = null;
         var fieldDescriptor:BaseFieldDescriptor = null;
         var shortName:String = null;
         var fieldValues:Array = null;
         var i:int = 0;
         var m:Array = null;
         var hasField:String = null;
         var extension:BaseFieldDescriptor = null;
         var extensionFieldValues:Array = null;
         var j:int = 0;
         var output:IDataOutput = param1;
         var message:Message = param2;
         var printSetting:PrintSetting = param3;
         var currentIndent:String = param4;
         isFirst = true;
         var type:Class = Object(message).constructor;
         if(type in allMessageFields)
         {
            messageFields = allMessageFields[type];
         }
         else
         {
            description = describeType(type);
            messageFields = description.*.(0 == String(@type).search(new RegExp("^com.netease.protobuf.fieldDescriptors::(Repeated)?FieldDescriptor\\$")) && BaseFieldDescriptor(type[@name]).name.search(new RegExp("\\/")) == -1).@name;
            allMessageFields[type] = messageFields;
         }
         for each(fieldDescriptorName in messageFields)
         {
            fieldDescriptor = type[fieldDescriptorName];
            shortName = fieldDescriptor.fullName.substring(fieldDescriptor.fullName.lastIndexOf(".") + 1);
            if(fieldDescriptor.type == Array)
            {
               fieldValues = message[fieldDescriptor.name];
               if(fieldValues)
               {
                  i = 0;
                  while(i < fieldValues.length)
                  {
                     if(isFirst)
                     {
                        isFirst = false;
                     }
                     else
                     {
                        output.writeByte(printSetting.newLine);
                     }
                     output.writeUTFBytes(currentIndent);
                     output.writeUTFBytes(shortName);
                     printValue(output,fieldDescriptor,fieldValues[i],printSetting,currentIndent);
                     i++;
                  }
               }
            }
            else
            {
               m = fieldDescriptor.name.match(new RegExp("^(__)?(.)(.*)$"));
               m[0] = "";
               m[1] = "has";
               m[2] = m[2].toUpperCase();
               hasField = m.join("");
               try
               {
                  if(false === message[hasField])
                  {
                     continue;
                  }
               }
               catch(e:ReferenceError)
               {
               }
               if(isFirst)
               {
                  isFirst = false;
               }
               else
               {
                  output.writeByte(printSetting.newLine);
               }
               output.writeUTFBytes(currentIndent);
               output.writeUTFBytes(shortName);
               printValue(output,fieldDescriptor,message[fieldDescriptor.name],printSetting,currentIndent);
            }
         }
         for(key in message)
         {
            try
            {
               extension = BaseFieldDescriptor.getExtensionByName(key);
            }
            catch(e:ReferenceError)
            {
               if(key.search(new RegExp("^[0-9]+$")) == 0)
               {
                  if(isFirst)
                  {
                     isFirst = false;
                  }
                  else
                  {
                     output.writeByte(printSetting.newLine);
                  }
                  printUnknownField(output,uint(key),message[key],printSetting,currentIndent);
                  continue;
               }
               throw new IOError("Bad unknown field " + key);
            }
            if(extension.type == Array)
            {
               extensionFieldValues = message[key];
               j = 0;
               while(j < extensionFieldValues.length)
               {
                  if(isFirst)
                  {
                     isFirst = false;
                  }
                  else
                  {
                     output.writeByte(printSetting.newLine);
                  }
                  output.writeUTFBytes(currentIndent);
                  output.writeUTFBytes("[");
                  output.writeUTFBytes(extension.fullName);
                  output.writeUTFBytes("]");
                  printValue(output,extension,extensionFieldValues[j],printSetting,currentIndent);
                  j++;
               }
            }
            else
            {
               if(isFirst)
               {
                  isFirst = false;
               }
               else
               {
                  output.writeByte(printSetting.newLine);
               }
               output.writeUTFBytes(currentIndent);
               output.writeUTFBytes("[");
               output.writeUTFBytes(extension.fullName);
               output.writeUTFBytes("]");
               printValue(output,extension,message[key],printSetting,currentIndent);
            }
         }
      }
      
      private static function printValue(param1:IDataOutput, param2:BaseFieldDescriptor, param3:Object, param4:PrintSetting, param5:String = "") : void
      {
         var _loc7_:String = null;
         var _loc8_:FieldDescriptor$TYPE_ENUM = null;
         var _loc9_:RepeatedFieldDescriptor$TYPE_ENUM = null;
         var _loc6_:Message = param3 as Message;
         if(_loc6_)
         {
            if(param4 == SINGLELINE_MODE)
            {
               param1.writeUTFBytes("{");
            }
            else
            {
               param1.writeUTFBytes(" {\n");
            }
            printMessageFields(param1,_loc6_,param4,param4.indentChars + param5);
            if(param4 == SINGLELINE_MODE)
            {
               param1.writeUTFBytes("}");
            }
            else
            {
               param1.writeByte(param4.newLine);
               param1.writeUTFBytes(param5);
               param1.writeUTFBytes("}");
            }
         }
         else
         {
            param1.writeUTFBytes(param4.simpleFieldSeperator);
            _loc7_ = param3 as String;
            if(_loc7_ !== null)
            {
               printString(param1,_loc7_);
            }
            else
            {
               _loc8_ = param2 as FieldDescriptor$TYPE_ENUM;
               if(_loc8_)
               {
                  printEnum(param1,int(param3),_loc8_.enumType);
               }
               else
               {
                  _loc9_ = param2 as RepeatedFieldDescriptor$TYPE_ENUM;
                  if(_loc9_)
                  {
                     printEnum(param1,int(param3),_loc9_.enumType);
                  }
                  else if(param2 is FieldDescriptor$TYPE_BYTES || param2 is RepeatedFieldDescriptor$TYPE_BYTES)
                  {
                     printBytes(param1,ByteArray(param3));
                  }
                  else
                  {
                     param1.writeUTFBytes(param3.toString());
                  }
               }
            }
         }
      }
      
      public static function printToUTFBytes(param1:IDataOutput, param2:Message, param3:Boolean = true, param4:String = "") : void
      {
         printMessageFields(param1,param2,param3?SINGLELINE_MODE:MULTILINE_MODE,param4);
      }
      
      public static function printToString(param1:Message, param2:Boolean = true, param3:String = "") : String
      {
         var _loc4_:ByteArray = new ByteArray();
         printToUTFBytes(_loc4_,param1,param2,param3);
         _loc4_.position = 0;
         return _loc4_.readUTFBytes(_loc4_.length);
      }
      
      private static function skipWhitespace(param1:ISource) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function toHexDigit(param1:int) : int
      {
         if(param1 >= 48 && param1 <= 57)
         {
            return param1 - 48;
         }
         if(param1 >= 97 && param1 <= 102)
         {
            return param1 - 87;
         }
         if(param1 >= 65 && param1 <= 70)
         {
            return param1 - 55;
         }
         throw new IOError("Expect hex, got " + String.fromCharCode(param1));
      }
      
      private static function toOctalDigit(param1:int) : int
      {
         if(param1 >= 48 && param1 <= 55)
         {
            return param1 - 48;
         }
         throw new IOError("Expect digit, got " + String.fromCharCode(param1));
      }
      
      private static function tryConsumeBytes(param1:ISource) : ByteArray
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function tryConsume(param1:ISource, param2:int) : Boolean
      {
         skipWhitespace(param1);
         var _loc3_:int = param1.read();
         if(_loc3_ == param2)
         {
            return true;
         }
         param1.unread(_loc3_);
         return false;
      }
      
      private static function consume(param1:ISource, param2:int) : void
      {
         skipWhitespace(param1);
         var _loc3_:int = param1.read();
         if(_loc3_ != param2)
         {
            throw new IOError("Expect " + String.fromCharCode(param2) + ", got " + String.fromCharCode(_loc3_));
         }
      }
      
      private static function consumeIdentifier(param1:ISource) : String
      {
         var _loc3_:* = 0;
         skipWhitespace(param1);
         var _loc2_:ByteArray = new ByteArray();
         while(true)
         {
            _loc3_ = param1.read();
            if(_loc3_ >= 48 && _loc3_ <= 57 || _loc3_ >= 65 && _loc3_ <= 90 || _loc3_ >= 97 && _loc3_ <= 122 || _loc3_ == 46 || _loc3_ == 95 || _loc3_ == 45 || _loc3_ < 0)
            {
               _loc2_.writeByte(_loc3_);
               continue;
            }
            if(_loc2_.length == 0)
            {
               throw new IOError("Expect Identifier, got " + String.fromCharCode(_loc3_));
            }
            param1.unread(_loc3_);
            break;
         }
         _loc2_.position = 0;
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      private static function appendUnknown(param1:Message, param2:uint, param3:*) : void
      {
         var _loc5_:Array = null;
         var _loc4_:* = param1[param2];
         if(_loc4_ === undefined)
         {
            param1[param2] = param3;
         }
         else
         {
            _loc5_ = _loc4_ as Array;
            if(_loc5_)
            {
               _loc5_.push(param3);
            }
            else
            {
               param1[param2] = [_loc4_,param3];
            }
         }
      }
      
      private static function consumeUnknown(param1:ISource, param2:Message, param3:uint) : void
      {
         var _loc5_:String = null;
         var _loc4_:ByteArray = tryConsumeBytes(param1);
         if(_loc4_)
         {
            appendUnknown(param2,param3 << 3 | WireType.LENGTH_DELIMITED,_loc4_);
            return;
         }
         _loc5_ = consumeIdentifier(param1);
         var _loc6_:Array = _loc5_.match(new RegExp("^0[xX]([0-9a-fA-F]{16}|[0-9a-fA-F]{8})$"));
         if(!_loc6_)
         {
            appendUnknown(param2,param3 << 3 | WireType.VARINT,UInt64.parseUInt64(_loc5_));
            return;
         }
         var _loc7_:String = _loc6_[1];
         if(_loc7_.length == 8)
         {
            appendUnknown(param2,param3 << 3 | WireType.FIXED_32_BIT,uint(parseInt(_loc7_,16)));
         }
         else
         {
            appendUnknown(param2,param3 << 3 | WireType.FIXED_64_BIT,UInt64.parseUInt64(_loc7_,16));
         }
      }
      
      private static function consumeEnumFieldValue(param1:ISource, param2:Class) : int
      {
         var _loc3_:String = null;
         consume(param1,58);
         _loc3_ = consumeIdentifier(param1);
         var _loc4_:* = param2[_loc3_];
         if(_loc4_ === undefined)
         {
            throw new IOError("Invalid enum name " + _loc3_);
         }
         return _loc4_;
      }
      
      private static function parseUnknown(param1:Message) : void
      {
         var _loc3_:String = null;
         var _loc4_:ByteArray = null;
         var _loc5_:uint = 0;
         var _loc2_:WritingBuffer = new WritingBuffer();
         for(_loc3_ in param1)
         {
            _loc5_ = uint(_loc3_);
            if(_loc5_ != 0)
            {
               WriteUtils.writeUnknownPair(_loc2_,_loc5_,param1[_loc3_]);
               delete param1[_loc3_];
            }
         }
         _loc4_ = new ByteArray();
         _loc2_.toNormal(_loc4_);
         _loc4_.position = 0;
         param1.mergeFrom(_loc4_);
      }
      
      private static function consumeFieldValue(param1:ISource, param2:Class) : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function consumeField(param1:ISource, param2:Message) : void
      {
         var name:String = null;
         var fieldDescriptor:BaseFieldDescriptor = null;
         var lastDotPosition:int = 0;
         var scope:String = null;
         var localName:String = null;
         var destination:Array = null;
         var enumRepeatedFieldDescriptor:RepeatedFieldDescriptor$TYPE_ENUM = null;
         var enumFieldDescriptor:FieldDescriptor$TYPE_ENUM = null;
         var source:ISource = param1;
         var message:Message = param2;
         var isExtension:Boolean = tryConsume(source,91);
         name = consumeIdentifier(source);
         if(isExtension)
         {
            consume(source,93);
         }
         if(isExtension)
         {
            lastDotPosition = name.lastIndexOf(".");
            scope = name.substring(0,lastDotPosition);
            localName = name.substring(lastDotPosition + 1);
            try
            {
               fieldDescriptor = getDefinitionByName(scope)[localName.toUpperCase()];
            }
            catch(e:ReferenceError)
            {
               try
               {
                  fieldDescriptor = BaseFieldDescriptor(getDefinitionByName(scope + "." + localName.toUpperCase()));
               }
               catch(e:ReferenceError)
               {
                  throw new IOError("Unknown extension: " + name);
               }
            }
         }
         else
         {
            if(name.search(new RegExp("[0-9]+")) == 0)
            {
               consume(source,58);
               consumeUnknown(source,message,uint(name));
               return;
            }
            fieldDescriptor = Object(message).constructor[name.toUpperCase()];
            if(!fieldDescriptor)
            {
               throw new IOError("Unknown field: " + name);
            }
         }
         var repeatedFieldDescriptor:RepeatedFieldDescriptor = fieldDescriptor as RepeatedFieldDescriptor;
         if(repeatedFieldDescriptor)
         {
            destination = message[fieldDescriptor.name] || (message[fieldDescriptor.name] = []);
            enumRepeatedFieldDescriptor = repeatedFieldDescriptor as RepeatedFieldDescriptor$TYPE_ENUM;
            destination.push(enumRepeatedFieldDescriptor?consumeEnumFieldValue(source,enumRepeatedFieldDescriptor.enumType):consumeFieldValue(source,repeatedFieldDescriptor.elementType));
         }
         else
         {
            enumFieldDescriptor = fieldDescriptor as FieldDescriptor$TYPE_ENUM;
            message[fieldDescriptor.name] = enumFieldDescriptor?consumeEnumFieldValue(source,enumFieldDescriptor.enumType):consumeFieldValue(source,fieldDescriptor.type);
         }
      }
      
      private static function mergeFromSource(param1:ISource, param2:Message) : void
      {
         while(true)
         {
            if(tryConsume(param1,0))
            {
               break;
            }
            consumeField(param1,param2);
         }
         parseUnknown(param2);
      }
      
      public static function mergeFromUTFBytes(param1:IDataInput, param2:Message) : void
      {
         mergeFromSource(new WrappedSource(param1),param2);
      }
      
      public static function mergeFromString(param1:String, param2:Message) : void
      {
         var _loc3_:BufferedSource = new BufferedSource();
         _loc3_.writeUTFBytes(param1);
         _loc3_.position = 0;
         mergeFromSource(_loc3_,param2);
      }
      
      public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.autoSetNull();
         }
      }
   }
}

import flash.utils.ByteArray;

class BufferedSource extends ByteArray implements ISource
{
    
   function BufferedSource()
   {
      super();
   }
   
   public function unread(param1:int) : void
   {
      if(param1 == 0 && bytesAvailable == 0)
      {
         return;
      }
      position--;
   }
   
   public function read() : int
   {
      if(bytesAvailable > 0)
      {
         return readByte();
      }
      return 0;
   }
   
   public function autoSetNull() : void
   {
   }
}

import flash.utils.IDataInput;
import flash.errors.IOError;
import flash.errors.EOFError;

class WrappedSource implements ISource
{
    
   private var input:IDataInput;
   
   private var temp:int;
   
   function WrappedSource(param1:IDataInput)
   {
      super();
      this.input = param1;
   }
   
   public function unread(param1:int) : void
   {
      if(this.temp)
      {
         throw new IOError("Cannot unread twice!");
      }
      this.temp = param1;
   }
   
   public function read() : int
   {
      var _loc1_:* = 0;
      if(this.temp)
      {
         _loc1_ = this.temp;
         this.temp = 0;
         return _loc1_;
      }
      try
      {
         return this.input.readByte();
      }
      catch(e:EOFError)
      {
      }
      return 0;
   }
   
   public function autoSetNull() : void
   {
      this.input = null;
   }
}

class PrintSetting
{
    
   public var newLine:uint;
   
   public var indentChars:String;
   
   public var simpleFieldSeperator:String;
   
   function PrintSetting()
   {
      super();
   }
   
   public function autoSetNull() : void
   {
      this.indentChars = null;
      this.simpleFieldSeperator = null;
   }
}

interface ISource
{
    
   function read() : int;
   
   function unread(param1:int) : void;
}

const SINGLELINE_MODE:PrintSetting = new PrintSetting();

const MULTILINE_MODE:PrintSetting = new PrintSetting();
