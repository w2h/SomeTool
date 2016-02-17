package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.util.SWFSpec;
   import org.as3commons.bytecode.tags.SymbolClassTag;
   import org.as3commons.bytecode.tags.struct.Symbol;
   
   public class SymbolClassSerializer extends AbstractTagSerializer
   {
       
      public function SymbolClassSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:uint = SWFSpec.readUI16(param1);
         var _loc4_:SymbolClassTag = new SymbolClassTag();
         var _loc5_:IStructSerializer = structSerializerFactory.createSerializer(Symbol);
         var _loc6_:uint = 0;
         while(_loc6_ < _loc3_)
         {
            _loc4_.symbols[_loc4_.symbols.length] = _loc5_.read(param1);
            _loc6_++;
         }
         return _loc4_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:SymbolClassTag = param2 as SymbolClassTag;
         var _loc4_:IStructSerializer = structSerializerFactory.createSerializer(Symbol);
         var _loc5_:uint = _loc3_.symbols.length;
         SWFSpec.writeUI16(param1,_loc5_);
         var _loc6_:uint = 0;
         while(_loc6_ < _loc5_)
         {
            _loc4_.write(param1,_loc3_.symbols[_loc6_]);
            _loc6_++;
         }
      }
   }
}
