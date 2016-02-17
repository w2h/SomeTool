package org.as3commons.bytecode.tags.struct
{
   public class RecordHeader
   {
       
      private var _id:uint;
      
      private var _length:uint;
      
      private var _isLongTag:Boolean;
      
      public function RecordHeader(param1:uint, param2:uint, param3:Boolean)
      {
         super();
         this._id = param1;
         this._length = param2;
         this._isLongTag = param3;
      }
      
      public function get isLongTag() : Boolean
      {
         return this._isLongTag;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get length() : uint
      {
         return this._length;
      }
   }
}
