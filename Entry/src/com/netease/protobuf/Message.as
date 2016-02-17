package com.netease.protobuf
{
   import flash.utils.IDataInput;
   import flash.utils.Endian;
   import flash.utils.IDataOutput;
   import flash.errors.IllegalOperationError;
   import flash.errors.IOError;
   
   public class Message
   {
       
      public function Message()
      {
         super();
      }
      
      public static function getExtensionByName(param1:String) : IFieldDescriptor
      {
         return BaseFieldDescriptor.getExtensionByName(param1);
      }
      
      public final function mergeFrom(param1:IDataInput) : void
      {
         param1.endian = Endian.LITTLE_ENDIAN;
         used_by_generated_code::readFromSlice(param1,0);
      }
      
      public final function mergeDelimitedFrom(param1:IDataInput) : void
      {
         param1.endian = Endian.LITTLE_ENDIAN;
         ReadUtils.read$TYPE_MESSAGE(param1,this);
      }
      
      public final function writeTo(param1:IDataOutput) : void
      {
         var _loc2_:WritingBuffer = new WritingBuffer();
         used_by_generated_code::writeToBuffer(_loc2_);
         _loc2_.toNormal(param1);
      }
      
      public final function writeDelimitedTo(param1:IDataOutput) : void
      {
         var _loc2_:WritingBuffer = new WritingBuffer();
         WriteUtils.write$TYPE_MESSAGE(_loc2_,this);
         _loc2_.toNormal(param1);
      }
      
	  used_by_generated_code function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         throw new IllegalOperationError("Not implemented!");
      }
      
	  used_by_generated_code function writeToBuffer(param1:WritingBuffer) : void
      {
         throw new IllegalOperationError("Not implemented!");
      }
      
      private function writeSingleUnknown(param1:WritingBuffer, param2:uint, param3:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected final function writeUnknown(param1:WritingBuffer, param2:String) : void
      {
         var _loc3_:uint = uint(param2);
         if(_loc3_ == 0)
         {
            throw new ArgumentError("Attemp to write an undefined string filed: " + param2);
         }
         WriteUtils.writeUnknownPair(param1,_loc3_,this[param2]);
      }
      
      protected final function writeExtensionOrUnknown(param1:WritingBuffer, param2:String) : void
      {
         var fieldDescriptor:BaseFieldDescriptor = null;
         var output:WritingBuffer = param1;
         var fieldName:String = param2;
         try
         {
            fieldDescriptor = BaseFieldDescriptor.getExtensionByName(fieldName);
         }
         catch(e:ReferenceError)
         {
            writeUnknown(output,fieldName);
            return;
         }
         fieldDescriptor.write(output,this);
      }
      
      protected final function readUnknown(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected final function readExtensionOrUnknown(param1:Array, param2:IDataInput, param3:uint) : void
      {
         var _loc4_:Function = param1[param3];
         if(_loc4_ != null)
         {
            _loc4_(param2,this);
         }
         else
         {
            this.readUnknown(param2,param3);
         }
      }
      
      public final function toString() : String
      {
         if(js.available)
         {
            return TextFormat.printToString(this);
         }
         return TextFormat.printToString(this,false);
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
