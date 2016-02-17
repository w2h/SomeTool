package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.typeinfo.Annotatable;
   
   public final class FunctionTrait extends TraitInfo
   {
       
      public var functionSlotId:int;
      
      public var functionMethod:org.as3commons.bytecode.abc.MethodInfo;
      
      public var isStatic:Boolean = false;
      
      public function FunctionTrait()
      {
         super();
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("FunctionTrait[name={0}, functionSlotId={1}, method={2}]",traitMultiname,this.functionSlotId,this.functionMethod);
      }
      
      override public function clone() : *
      {
         var _loc1_:FunctionTrait = new FunctionTrait();
         this.populateClone(_loc1_);
         return _loc1_;
      }
      
      override protected function populateClone(param1:Annotatable) : void
      {
         super.populateClone(param1);
         var _loc2_:FunctionTrait = FunctionTrait(param1);
         _loc2_.functionSlotId = this.functionSlotId;
         _loc2_.isStatic = this.isStatic;
      }
   }
}
