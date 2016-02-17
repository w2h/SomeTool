package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.typeinfo.Annotatable;
   
   public final class ClassTrait extends TraitInfo
   {
       
      public var classSlotId:int;
      
      public var classIndex:int;
      
      public var classInfo:org.as3commons.bytecode.abc.ClassInfo;
      
      public function ClassTrait()
      {
         super();
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("ClassTrait[name={0}, classSlotId={1}, classIndex={2}, metadata={3}]",traitMultiname,this.classSlotId,this.classIndex,metadata);
      }
      
      override public function clone() : *
      {
         var _loc1_:ClassTrait = new ClassTrait();
         this.populateClone(_loc1_);
         return _loc1_;
      }
      
      override protected function populateClone(param1:Annotatable) : void
      {
         super.populateClone(param1);
         ClassTrait(param1).classSlotId = this.classSlotId;
         ClassTrait(param1).classIndex = this.classIndex;
      }
   }
}
