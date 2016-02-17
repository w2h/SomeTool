package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.ShowFrameTag;
   
   public class ShowFrameSerializer extends AbstractTagSerializer
   {
       
      public function ShowFrameSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         return new ShowFrameTag();
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
      }
   }
}
