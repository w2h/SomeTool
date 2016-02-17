package org.as3commons.bytecode.abc.enum
{
   public final class TraitAttributes
   {
      
      private static var _enumCreated:Boolean = false;
      
      private static const _TYPES:Array = [];
      
      public static const FINAL:org.as3commons.bytecode.abc.enum.TraitAttributes = new org.as3commons.bytecode.abc.enum.TraitAttributes(1,"final");
      
      public static const OVERRIDE:org.as3commons.bytecode.abc.enum.TraitAttributes = new org.as3commons.bytecode.abc.enum.TraitAttributes(2,"override");
      
      public static const METADATA:org.as3commons.bytecode.abc.enum.TraitAttributes = new org.as3commons.bytecode.abc.enum.TraitAttributes(4,"metadata");
      
      {
         _enumCreated = true;
      }
      
      private var _bitMask:uint;
      
      private var _description:String;
      
      public function TraitAttributes(param1:uint, param2:String)
      {
         super();
         this._bitMask = param1;
         this._description = param2;
         _TYPES[_TYPES.length] = this;
      }
      
      public static function determineAttributes(param1:int) : org.as3commons.bytecode.abc.enum.TraitAttributes
      {
         var _loc2_:org.as3commons.bytecode.abc.enum.TraitAttributes = null;
         var _loc3_:org.as3commons.bytecode.abc.enum.TraitAttributes = null;
         for each(_loc3_ in _TYPES)
         {
            if(_loc3_.bitMask << 4 & param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function get bitMask() : uint
      {
         return this._bitMask;
      }
      
      public function get description() : String
      {
         return this._description;
      }
   }
}
