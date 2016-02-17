package org.as3commons.bytecode.emit.enum
{
   import org.as3commons.bytecode.abc.enum.BaseEnum;
   import flash.utils.Dictionary;
   import org.as3commons.lang.Assert;
   
   public final class MemberVisibility extends BaseEnum
   {
      
      private static const _items:Dictionary = new Dictionary();
      
      private static var _enumCreated:Boolean = false;
      
      public static const PUBLIC:org.as3commons.bytecode.emit.enum.MemberVisibility = new org.as3commons.bytecode.emit.enum.MemberVisibility(PUBLIC_VALUE);
      
      public static const PROTECTED:org.as3commons.bytecode.emit.enum.MemberVisibility = new org.as3commons.bytecode.emit.enum.MemberVisibility(PROTECTED_VALUE);
      
      public static const PRIVATE:org.as3commons.bytecode.emit.enum.MemberVisibility = new org.as3commons.bytecode.emit.enum.MemberVisibility(PRIVATE_VALUE);
      
      public static const NAMESPACE:org.as3commons.bytecode.emit.enum.MemberVisibility = new org.as3commons.bytecode.emit.enum.MemberVisibility(NAMESPACE_VALUE);
      
      public static const INTERNAL:org.as3commons.bytecode.emit.enum.MemberVisibility = new org.as3commons.bytecode.emit.enum.MemberVisibility(INTERNAL_VALUE);
      
      private static const PUBLIC_VALUE:String = "public";
      
      private static const PROTECTED_VALUE:String = "protected";
      
      private static const PRIVATE_VALUE:String = "private";
      
      private static const NAMESPACE_VALUE:String = "namespace";
      
      private static const INTERNAL_VALUE:String = "internal";
      
      {
         _enumCreated = true;
      }
      
      public function MemberVisibility(param1:*)
      {
         Assert.state(!_enumCreated,"MemberVisibility enum has already been created");
         super(param1);
         _items[param1] = this;
      }
      
      public static function fromValue(param1:String) : org.as3commons.bytecode.emit.enum.MemberVisibility
      {
         return _items[param1] as org.as3commons.bytecode.emit.enum.MemberVisibility;
      }
   }
}
