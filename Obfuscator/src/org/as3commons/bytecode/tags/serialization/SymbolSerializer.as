package org.as3commons.bytecode.tags.serialization
{
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.Symbol;
   import org.as3commons.bytecode.util.SWFSpec;
   
   public class SymbolSerializer extends AbstractStructSerializer
   {
       
      public function SymbolSerializer()
      {
         super();
      }
      
      override public function read(param1:ByteArray) : Object
      {
         var _loc2_:Symbol = new Symbol();
         _loc2_.tagId = SWFSpec.readUI16(param1);
         _loc2_.symbolClassName = SWFSpec.readString(param1);
         return _loc2_;
      }
      
      override public function write(param1:ByteArray, param2:Object) : void
      {
         var _loc3_:Symbol = param2 as Symbol;
         SWFSpec.writeUI16(param1,_loc3_.tagId);
         SWFSpec.writeString(param1,_loc3_.symbolClassName);
      }
   }
}
