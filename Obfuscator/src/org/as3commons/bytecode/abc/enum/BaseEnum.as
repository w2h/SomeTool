package org.as3commons.bytecode.abc.enum
{
   import flash.errors.IllegalOperationError;
   
   public class BaseEnum
   {
       
      private var _value;
      
      public function BaseEnum(param1:*)
      {
         super();
         this._value = param1;
      }
      
      public function get value() : *
      {
         return this._value;
      }
      
      public function toString() : String
      {
         throw new IllegalOperationError("not implemented in base class");
      }
   }
}
