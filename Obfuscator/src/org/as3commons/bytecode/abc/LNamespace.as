package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.as3commons_bytecode;
   import org.as3commons.bytecode.abc.enum.NamespaceKind;
   
   use namespace as3commons_bytecode;
   
   public final class LNamespace implements ICloneable, IEquals
   {
      
      public static const PUBLIC:org.as3commons.bytecode.abc.LNamespace = new org.as3commons.bytecode.abc.LNamespace(NamespaceKind.PACKAGE_NAMESPACE,"");
      
      public static const ASTERISK:org.as3commons.bytecode.abc.LNamespace = new org.as3commons.bytecode.abc.LNamespace(NamespaceKind.NAMESPACE,"*");
      
      public static const FLASH_UTILS:org.as3commons.bytecode.abc.LNamespace = new org.as3commons.bytecode.abc.LNamespace(NamespaceKind.PACKAGE_NAMESPACE,"flash.utils");
      
      public static const BUILTIN:org.as3commons.bytecode.abc.LNamespace = new org.as3commons.bytecode.abc.LNamespace(NamespaceKind.NAMESPACE,"http://adobe.com/AS3/2006/builtin");
      
      as3commons_bytecode static var semanticEquality:Boolean = false;
       
      public var kind:NamespaceKind;
      
      public var name:String;
      
      public function LNamespace(param1:NamespaceKind, param2:String)
      {
         super();
         this.kind = param1;
         this.name = param2;
      }
      
      public function clone() : *
      {
         return new org.as3commons.bytecode.abc.LNamespace(this.kind,this.name);
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:org.as3commons.bytecode.abc.LNamespace = LNamespace(param1);
         var _loc4_:* = this.kind == NamespaceKind.PRIVATE_NAMESPACE;
         var _loc5_:* = _loc3_.kind == NamespaceKind.PRIVATE_NAMESPACE;
         if(_loc4_ && _loc5_ && !as3commons_bytecode::semanticEquality)
         {
            _loc2_ = _loc3_ == this;
         }
         else
         {
            _loc2_ = this.kind == _loc3_.kind && this.name == _loc3_.name;
         }
         return _loc2_;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "Namespace[" + this.kind.description;
         _loc1_ = _loc1_ + (this.name != ""?"::":"");
         _loc1_ = _loc1_ + this.name;
         _loc1_ = _loc1_ + "]";
         return _loc1_;
      }
   }
}
