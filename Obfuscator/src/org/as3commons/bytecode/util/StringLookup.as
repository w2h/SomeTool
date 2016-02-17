package org.as3commons.bytecode.util
{
   import flash.utils.Dictionary;
   
   public final class StringLookup
   {
      
      private static const UNDERSCORE:String = "_";
      
      private static const RESERVED_WORDS:Object = {
         "_hasOwnProperty":true,
         "_isPrototypeOf":true,
         "_propertyIsEnumerable":true,
         "_setPropertyIsEnumerable":true,
         "_toLocaleString":true,
         "_toString":true,
         "_valueOf":true,
         "_prototype":true,
         "_constructor":true
      };
      
      private static const prefix:String = (9999 + Math.floor(Math.random() * 9999)).toString() + UNDERSCORE;
       
      private var _internalLookup:Dictionary;
      
      public function StringLookup()
      {
         this._internalLookup = new Dictionary();
         super();
      }
      
      protected function makeValidKey(param1:String) : String
      {
         if(RESERVED_WORDS[UNDERSCORE + param1] == true)
         {
            return prefix + param1;
         }
         return param1;
      }
      
      public function contains(param1:String) : Boolean
      {
         var _loc2_:String = this.makeValidKey(param1);
         return this._internalLookup[_loc2_] != null;
      }
      
      public function set(param1:String, param2:int) : void
      {
         var _loc3_:String = this.makeValidKey(param1);
         this._internalLookup[_loc3_] = param2;
      }
      
      public function get(param1:String) : *
      {
         var _loc2_:String = this.makeValidKey(param1);
         return this._internalLookup[_loc2_];
      }
      
      public function remove(param1:String) : void
      {
         var _loc2_:String = this.makeValidKey(param1);
         delete this._internalLookup[_loc2_];
      }
   }
}
