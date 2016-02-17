package org.as3commons.bytecode.tags.serialization
{
   import org.as3commons.bytecode.tags.ISWFTag;
   import flash.utils.ByteArray;
   import org.as3commons.bytecode.tags.struct.RecordHeader;
   import org.as3commons.bytecode.tags.ScriptLimitsTag;
   import org.as3commons.bytecode.util.SWFSpec;
   
   public class ScriptLimitsSerializer extends AbstractTagSerializer
   {
       
      public function ScriptLimitsSerializer(param1:IStructSerializerFactory)
      {
         super(param1);
      }
      
      override public function read(param1:ByteArray, param2:RecordHeader) : ISWFTag
      {
         var _loc3_:ScriptLimitsTag = new ScriptLimitsTag();
         _loc3_.maxRecursionDepth = SWFSpec.readUI16(param1);
         _loc3_.scriptTimeoutSeconds = SWFSpec.readUI16(param1);
         return _loc3_;
      }
      
      override public function write(param1:ByteArray, param2:ISWFTag) : void
      {
         var _loc3_:ScriptLimitsTag = ScriptLimitsTag(param2);
         SWFSpec.writeUI16(param1,_loc3_.maxRecursionDepth);
         SWFSpec.writeUI16(param1,_loc3_.scriptTimeoutSeconds);
      }
   }
}
