package org.as3commons.bytecode.tags.struct
{
   public class RGB
   {
       
      private var _red:uint;
      
      private var _green:uint;
      
      private var _blue:uint;
      
      public function RGB()
      {
         super();
      }
      
      public function get red() : uint
      {
         return this._red;
      }
      
      public function set red(param1:uint) : void
      {
         this._red = param1;
      }
      
      public function get green() : uint
      {
         return this._green;
      }
      
      public function set green(param1:uint) : void
      {
         this._green = param1;
      }
      
      public function get blue() : uint
      {
         return this._blue;
      }
      
      public function set blue(param1:uint) : void
      {
         this._blue = param1;
      }
   }
}
