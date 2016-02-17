package org.as3commons.bytecode.abc.enum
{
   import flash.utils.Dictionary;
   import org.as3commons.lang.StringUtils;
   
   public final class ConstantKind
   {
      
      private static var _enumCreated:Boolean = false;
      
      private static const _TYPES:Dictionary = new Dictionary();
      
      public static const UNKNOWN:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(0,"UNKNOWN");
      
      public static const INT:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(3,"int");
      
      public static const UINT:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(4,"uint");
      
      public static const DOUBLE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(6,"double");
      
      public static const UTF8:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(1,"utf8");
      
      public static const TRUE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(11,"true");
      
      public static const FALSE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(10,"false");
      
      public static const NULL:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(12,"null");
      
      public static const UNDEFINED:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(0,"undefined");
      
      public static const NAMESPACE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(8,"namespace");
      
      public static const PACKAGE_NAMESPACE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(22,"package namespace");
      
      public static const PACKAGE_INTERNAL_NAMESPACE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(23,"package internal namespace");
      
      public static const PROTECTED_NAMESPACE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(24,"protected namespace");
      
      public static const EXPLICIT_NAMESPACE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(25,"explicit namespace");
      
      public static const STATIC_PROTECTED_NAMESPACE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(26,"static protected namespace");
      
      public static const PRIVATE_NAMESPACE:org.as3commons.bytecode.abc.enum.ConstantKind = new org.as3commons.bytecode.abc.enum.ConstantKind(5,"private namespace");
      
      {
         _enumCreated = true;
      }
      
      private var _kind:uint;
      
      private var _description:String;
      
      public function ConstantKind(param1:uint, param2:String)
      {
         super();
         this._kind = param1;
         this._description = param2;
         _TYPES[this._kind] = this;
      }
      
      public static function determineKind(param1:int) : org.as3commons.bytecode.abc.enum.ConstantKind
      {
         var _loc2_:org.as3commons.bytecode.abc.enum.ConstantKind = _TYPES[param1];
         if(_loc2_ == null)
         {
            throw new Error("Unable to match ConstantKind to " + param1);
         }
         return _loc2_;
      }
      
      public static function determineKindFromInstance(param1:*) : org.as3commons.bytecode.abc.enum.ConstantKind
      {
         var _loc2_:* = false;
         if(param1 is String)
         {
            return org.as3commons.bytecode.abc.enum.ConstantKind.UTF8;
         }
         if(param1 is uint)
         {
            return org.as3commons.bytecode.abc.enum.ConstantKind.UINT;
         }
         if(param1 is int)
         {
            return org.as3commons.bytecode.abc.enum.ConstantKind.INT;
         }
         if(param1 is Number)
         {
            return org.as3commons.bytecode.abc.enum.ConstantKind.DOUBLE;
         }
         if(param1 is Boolean)
         {
            _loc2_ = param1 as Boolean;
            return _loc2_?org.as3commons.bytecode.abc.enum.ConstantKind.TRUE:org.as3commons.bytecode.abc.enum.ConstantKind.FALSE;
         }
         if(param1 == null)
         {
            return org.as3commons.bytecode.abc.enum.ConstantKind.NULL;
         }
         return org.as3commons.bytecode.abc.enum.ConstantKind.UNKNOWN;
      }
      
      public function get value() : uint
      {
         return this._kind;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("ConstantKind[description={0}]",this._description);
      }
   }
}
