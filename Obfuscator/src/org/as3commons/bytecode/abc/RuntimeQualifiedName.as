package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.StringUtils;
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   
   public final class RuntimeQualifiedName extends NamedMultiname
   {
       
      public function RuntimeQualifiedName(param1:String, param2:MultinameKind = null)
      {
         var param2:MultinameKind = param2?param2:MultinameKind.RTQNAME;
         super(param2,param1);
         assertAppropriateMultinameKind([MultinameKind.RTQNAME,MultinameKind.RTQNAME_A],param2);
      }
      
      override public function clone() : *
      {
         return new RuntimeQualifiedName(name,kind);
      }
      
      override public function toString() : String
      {
         return StringUtils.substitute("{0}[name={1}]",kind.description,name);
      }
   }
}
