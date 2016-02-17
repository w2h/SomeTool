package com.tencent.morefun.naruto.executer
{
   public dynamic class ArrayCommand extends Array
   {
       
      protected var _busy:Boolean;
      
      public function ArrayCommand()
      {
         super([]);
         while(length > 0)
         {
            shift();
         }
      }
      
      public function get busy() : Boolean
      {
         return this._busy || length < 1;
      }
      
      public function first() : Object
      {
         this._busy = true;
         return concat()[0];
      }
      
      public function next() : Object
      {
         this._busy = false;
         return shift();
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
