package org.as3commons.bytecode.tags
{
   import flash.utils.ByteArray;
   
   public class UnsupportedTag extends AbstractTag
   {
       
      private var _tagBody:ByteArray;
      
      public function UnsupportedTag(param1:uint)
      {
         super(param1,"unsupported");
      }
      
      public function get tagBody() : ByteArray
      {
         return this._tagBody;
      }
      
      public function set tagBody(param1:ByteArray) : void
      {
         this._tagBody = param1;
      }
   }
}
