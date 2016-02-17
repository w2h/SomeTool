package org.as3commons.bytecode.abc.enum
{
   public final class MethodFlag
   {
      
      public static const NEED_ARGUMENTS:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(1,"need arguments");
      
      public static const NEED_ACTIVATION:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(2,"need activation");
      
      public static const NEED_REST:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(4,"need rest");
      
      public static const HAS_OPTIONAL:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(8,"has optional");
      
      public static const SET_DXNS:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(64,"set dxns");
      
      public static const HAS_PARAM_NAMES:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(128,"has param names");
      
      public static const IGNORE_REST:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(16,"ignore rest");
      
      public static const NATIVE:org.as3commons.bytecode.abc.enum.MethodFlag = new org.as3commons.bytecode.abc.enum.MethodFlag(32,"native");
       
      private var _value:uint;
      
      private var _description:String;
      
      public function MethodFlag(param1:uint, param2:String)
      {
         super();
         this._value = param1;
         this._description = param2;
      }
      
      public static function flagPresent(param1:uint, param2:org.as3commons.bytecode.abc.enum.MethodFlag) : Boolean
      {
         return Boolean(param1 & param2.value);
      }
      
      public static function addFlag(param1:uint, param2:org.as3commons.bytecode.abc.enum.MethodFlag) : uint
      {
         return !flagPresent(param1,param2)?param1 = param1 | param2.value:param1;
      }
      
      public static function removeFlag(param1:uint, param2:org.as3commons.bytecode.abc.enum.MethodFlag) : uint
      {
         return flagPresent(param1,param2)?param1 = param1 & param2.value:param1;
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      public function get description() : String
      {
         return this._description;
      }
   }
}
