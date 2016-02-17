package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.typeinfo.Annotatable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.abc.enum.TraitKind;
   import flash.errors.IllegalOperationError;
   
   public class TraitInfo extends Annotatable implements IEquals
   {
       
      public var traitMultiname:org.as3commons.bytecode.abc.QualifiedName;
      
      public var traitKind:TraitKind;
      
      public var isFinal:Boolean;
      
      public var isOverride:Boolean;
      
      public function TraitInfo()
      {
         super();
      }
      
      override public function clone() : *
      {
         throw new IllegalOperationError(NOT_IMPLEMENTED_ERROR);
      }
      
      override protected function populateClone(param1:Annotatable) : void
      {
         super.populateClone(param1);
         var _loc2_:TraitInfo = TraitInfo(param1);
         _loc2_.traitMultiname = this.traitMultiname.clone();
         _loc2_.traitKind = this.traitKind;
         _loc2_.isFinal = this.isFinal;
         _loc2_.isOverride = this.isOverride;
      }
      
      public function get hasMetadata() : Boolean
      {
         return metadata.length > 0;
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc2_:TraitInfo = param1 as TraitInfo;
         if(_loc2_ != null)
         {
            if(!this.traitMultiname.equals(_loc2_.traitMultiname))
            {
               return false;
            }
            if(this.traitKind !== _loc2_.traitKind)
            {
               return false;
            }
            if(this.isFinal != _loc2_.isFinal)
            {
               return false;
            }
            if(this.isOverride != _loc2_.isOverride)
            {
               return false;
            }
            return true;
         }
         return false;
      }
   }
}
