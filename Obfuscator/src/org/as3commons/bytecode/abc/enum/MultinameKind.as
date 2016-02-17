package org.as3commons.bytecode.abc.enum
{
   import flash.utils.Dictionary;
   import org.as3commons.lang.StringUtils;
   
   public final class MultinameKind
   {
      
      private static var _enumCreated:Boolean = false;
      
      private static const _TYPES:Dictionary = new Dictionary();
      
      public static const QNAME:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(7,"QName");
      
      public static const QNAME_A:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(13,"QName_A");
      
      public static const RTQNAME:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(15,"RTQName");
      
      public static const RTQNAME_A:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(16,"RTQName_A");
      
      public static const RTQNAME_L:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(17,"RTQName_L");
      
      public static const RTQNAME_LA:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(18,"RTQName_LA");
      
      public static const MULTINAME:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(9,"Multiname");
      
      public static const MULTINAME_A:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(14,"Multiname_A");
      
      public static const MULTINAME_L:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(27,"Multiname_L");
      
      public static const MULTINAME_LA:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(28,"Multiname_LA");
      
      public static const GENERIC:org.as3commons.bytecode.abc.enum.MultinameKind = new org.as3commons.bytecode.abc.enum.MultinameKind(29,"Generic");
      
      {
         _enumCreated = true;
      }
      
      private var _byteValue:int;
      
      private var _description:String;
      
      public function MultinameKind(param1:int, param2:String)
      {
         super();
         this._byteValue = param1;
         this._description = param2;
         _TYPES[this._byteValue] = this;
      }
      
      public static function determineKind(param1:int) : org.as3commons.bytecode.abc.enum.MultinameKind
      {
         var _loc2_:org.as3commons.bytecode.abc.enum.MultinameKind = _TYPES[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         throw new Error("No match for MultinameKind: " + param1);
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
         return StringUtils.substitute("MultinameKind[description={0}]",this._description);
      }
   }
}
