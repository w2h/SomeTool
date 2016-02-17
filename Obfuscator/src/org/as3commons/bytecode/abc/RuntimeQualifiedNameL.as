package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   
   public final class RuntimeQualifiedNameL extends BaseMultiname
   {
       
      public function RuntimeQualifiedNameL(param1:MultinameKind = null)
      {
         var param1:MultinameKind = param1?param1:MultinameKind.RTQNAME_L;
         super(param1);
         assertAppropriateMultinameKind([MultinameKind.RTQNAME_L,MultinameKind.RTQNAME_LA],param1);
      }
      
      override public function clone() : *
      {
         return new RuntimeQualifiedNameL(kind);
      }
      
      override public function toString() : String
      {
         return kind.description;
      }
   }
}
