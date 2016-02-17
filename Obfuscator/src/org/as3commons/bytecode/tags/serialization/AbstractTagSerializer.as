package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   
   public class AbstractTagSerializer implements ITagSerializer
   {
       
      private var _structSerializerFactory:org.as3commons.bytecode.tags.serialization.IStructSerializerFactory;
      
      public function AbstractTagSerializer(param1:org.as3commons.bytecode.tags.serialization.IStructSerializerFactory = null)
      {
         super();
         this._structSerializerFactory = param1;
      }
      
      public function get structSerializerFactory() : org.as3commons.bytecode.tags.serialization.IStructSerializerFactory
      {
         return this._structSerializerFactory;
      }
      
      public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         throw new Error("Method not implemented in abstract base class");
      }
      
      public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         throw new Error("Method not implemented in abstract base class");
      }
   }
}
