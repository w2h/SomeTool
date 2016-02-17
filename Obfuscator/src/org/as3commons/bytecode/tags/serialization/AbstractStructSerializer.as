package org.as3commons.bytecode.tags.serialization
{
   import flash.utils.ByteArray;
   
   public class AbstractStructSerializer implements IStructSerializer
   {
       
      public function AbstractStructSerializer()
      {
         super();
      }
      
      public function read(param1:ByteArray) : Object
      {
         throw new Error("Method not implemented in abstract base class");
      }
      
      public function write(param1:ByteArray, param2:Object) : void
      {
         throw new Error("Method not implemented in abstract base class");
      }
   }
}
