package org.as3commons.bytecode.abc.enum
{
   import flash.utils.Dictionary;
   
   public final class NamespaceKind
   {
      
      private static var _enumCreated:Boolean = false;
      
      private static const _TYPES:Dictionary = new Dictionary();
      
      private static const _NAMES:Dictionary = new Dictionary();
      
      private static const _TYPELIST:Array = [];
      
      public static const UNKNOWN:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(0,"unknown");
      
      public static const NAMESPACE:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(8,"namespace");
      
      public static const PACKAGE_NAMESPACE:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(22,"public");
      
      public static const PACKAGE_INTERNAL_NAMESPACE:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(23,"packageInternalNamespace");
      
      public static const PROTECTED_NAMESPACE:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(24,"protectedNamespace");
      
      public static const EXPLICIT_NAMESPACE:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(25,"explicitNamespace");
      
      public static const STATIC_PROTECTED_NAMESPACE:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(26,"staticProtectedNamespace");
      
      public static const PRIVATE_NAMESPACE:org.as3commons.bytecode.abc.enum.NamespaceKind = new org.as3commons.bytecode.abc.enum.NamespaceKind(5,"private");
      
      {
         _enumCreated = true;
      }
      
      private var _byteValue:uint;
      
      private var _description:String;
      
      public function NamespaceKind(param1:uint, param2:String)
      {
         super();
         this._byteValue = param1;
         this._description = param2;
         _TYPES[param1] = this;
         _NAMES[param2] = this;
      }
      
      public static function get types() : Array
      {
         var _loc1_:String = null;
         if(_TYPELIST.length == 0)
         {
            for(_loc1_ in _TYPES)
            {
               _TYPELIST[_TYPELIST.length] = _TYPES[_loc1_];
            }
         }
         return _TYPELIST;
      }
      
      public static function determineKind(param1:int) : org.as3commons.bytecode.abc.enum.NamespaceKind
      {
         var _loc2_:org.as3commons.bytecode.abc.enum.NamespaceKind = _TYPES[param1];
         if(_loc2_ == null)
         {
            throw new Error("Unknown NamespaceKind: " + param1);
         }
         return _loc2_;
      }
      
      public static function determineKindByName(param1:String) : org.as3commons.bytecode.abc.enum.NamespaceKind
      {
         var _loc2_:org.as3commons.bytecode.abc.enum.NamespaceKind = _NAMES[param1];
         if(_loc2_ == null)
         {
            throw new Error("Unknown NamespaceKind: " + param1);
         }
         return _loc2_;
      }
      
      public function get byteValue() : int
      {
         return this._byteValue;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function toString() : String
      {
         return this._description;
      }
   }
}
