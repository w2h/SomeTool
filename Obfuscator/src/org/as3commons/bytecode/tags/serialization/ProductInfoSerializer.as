package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.ProductInfoTag;
   import org.as3commons.bytecode.util.SWFSpec;
   
   public class ProductInfoSerializer extends AbstractTagSerializer
   {
       
      public function ProductInfoSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:ProductInfoTag = new ProductInfoTag();
         _loc3_.productId = SWFSpec.readUI32(param1);
         _loc3_.edition = SWFSpec.readUI32(param1);
         _loc3_.majorVersion = SWFSpec.readUI8(param1);
         _loc3_.minorVersion = SWFSpec.readUI8(param1);
         _loc3_.minorBuild = SWFSpec.readUI32(param1);
         _loc3_.majorBuild = SWFSpec.readUI32(param1);
         _loc3_.compileDatePart1 = SWFSpec.readUI32(param1);
         _loc3_.compileDatePart2 = SWFSpec.readUI32(param1);
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:ProductInfoTag = param2 as ProductInfoTag;
         SWFSpec.writeUI32(param1,_loc3_.productId);
         SWFSpec.writeUI32(param1,_loc3_.edition);
         SWFSpec.writeUI8(param1,_loc3_.majorVersion);
         SWFSpec.writeUI8(param1,_loc3_.minorVersion);
         SWFSpec.writeUI32(param1,_loc3_.minorBuild);
         SWFSpec.writeUI32(param1,_loc3_.majorBuild);
         SWFSpec.writeUI32(param1,_loc3_.compileDatePart1);
         SWFSpec.writeUI32(param1,_loc3_.compileDatePart2);
      }
   }
}
