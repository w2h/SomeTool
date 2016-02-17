package org.as3commons.bytecode.abc.enum
{
   import flash.utils.Dictionary;
   import org.as3commons.lang.StringUtils;
   
   public final class TraitKind
   {
      
      private static var _enumCreated:Boolean = false;
      
      private static const _TYPES:Dictionary = new Dictionary();
      
      public static const SLOT:org.as3commons.bytecode.abc.enum.TraitKind = new org.as3commons.bytecode.abc.enum.TraitKind(0,"slot");
      
      public static const METHOD:org.as3commons.bytecode.abc.enum.TraitKind = new org.as3commons.bytecode.abc.enum.TraitKind(1,"method");
      
      public static const GETTER:org.as3commons.bytecode.abc.enum.TraitKind = new org.as3commons.bytecode.abc.enum.TraitKind(2,"getter");
      
      public static const SETTER:org.as3commons.bytecode.abc.enum.TraitKind = new org.as3commons.bytecode.abc.enum.TraitKind(3,"setter");
      
      public static const CLASS:org.as3commons.bytecode.abc.enum.TraitKind = new org.as3commons.bytecode.abc.enum.TraitKind(4,"class");
      
      public static const FUNCTION:org.as3commons.bytecode.abc.enum.TraitKind = new org.as3commons.bytecode.abc.enum.TraitKind(5,"function");
      
      public static const CONST:org.as3commons.bytecode.abc.enum.TraitKind = new org.as3commons.bytecode.abc.enum.TraitKind(6,"const");
      
      private static const UPPER_FOUR:uint = 15;
      
      {
         _enumCreated = true;
      }
      
      private var _value:uint;
      
      private var _description:String;
      
      private var _associatedClass:Class;
      
      public function TraitKind(param1:uint, param2:String)
      {
         super();
         this._value = param1;
         this._description = param2;
         _TYPES[this._value] = this;
      }
      
      public static function determineKind(param1:uint) : org.as3commons.bytecode.abc.enum.TraitKind
      {
         var _loc2_:* = param1 & UPPER_FOUR;
         var _loc3_:org.as3commons.bytecode.abc.enum.TraitKind = _TYPES[_loc2_];
         if(!_loc3_)
         {
            throw new Error("No match for kind: " + param1);
         }
         return _loc3_;
      }
      
      public function get bitMask() : uint
      {
         return this._value;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("TraitKind[bitMask={0},description={1}]",this._value,this._description);
      }
   }
}
