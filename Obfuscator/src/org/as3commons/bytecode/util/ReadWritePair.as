package org.as3commons.bytecode.util
{
   import flash.utils.ByteArray;
   
   public final class ReadWritePair
   {
       
      private var _reader:Function;
      
      private var _writer:Function;
      
      public function ReadWritePair(param1:Function, param2:Function)
      {
         super();
         this._reader = param1;
         this._writer = param2;
      }
      
      public function get reader() : Function
      {
         return this._reader;
      }
      
      public function read(param1:ByteArray) : *
      {
         return this.reader.apply(AbcSpec,[param1]);
      }
      
      public function write(param1:*, param2:ByteArray) : Function
      {
         return this.writer.apply(AbcSpec,[param1,param2]);
      }
      
      public function get writer() : Function
      {
         return this._writer;
      }
   }
}
