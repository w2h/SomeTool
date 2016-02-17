package org.as3commons.bytecode.typeinfo
{
   import org.as3commons.lang.ICloneable;
   import flash.errors.IllegalOperationError;
   import org.as3commons.bytecode.util.AbcFileUtil;
   
   public class Annotatable implements ICloneable
   {
      
      protected static const NOT_IMPLEMENTED_ERROR:String = "Not implemented in base class";
       
      private var _metadata:Vector.<org.as3commons.bytecode.typeinfo.Metadata>;
      
      public function Annotatable()
      {
         super();
         this._metadata = new Vector.<org.as3commons.bytecode.typeinfo.Metadata>();
      }
      
      public function addMetadata(param1:org.as3commons.bytecode.typeinfo.Metadata) : void
      {
         if(this._metadata.indexOf(param1) < 0)
         {
            this._metadata[this._metadata.length] = param1;
         }
      }
      
      public function addMetadataList(param1:Vector.<org.as3commons.bytecode.typeinfo.Metadata>) : void
      {
         var _loc2_:org.as3commons.bytecode.typeinfo.Metadata = null;
         for each(_loc2_ in param1)
         {
            this.addMetadata(_loc2_);
         }
      }
      
      public function get metadata() : Vector.<org.as3commons.bytecode.typeinfo.Metadata>
      {
         return this._metadata;
      }
      
      public function clone() : *
      {
         throw new IllegalOperationError(NOT_IMPLEMENTED_ERROR);
      }
      
      protected function populateClone(param1:Annotatable) : void
      {
         param1.addMetadataList(AbcFileUtil.cloneVector(this.metadata));
      }
   }
}
