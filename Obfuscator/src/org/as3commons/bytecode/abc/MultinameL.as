package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   import org.as3commons.lang.StringUtils;
   
   public class MultinameL extends BaseMultiname
   {
       
      private var _namespaceSet:org.as3commons.bytecode.abc.NamespaceSet;
      
      public function MultinameL(param1:org.as3commons.bytecode.abc.NamespaceSet, param2:MultinameKind = null)
      {
         var param2:MultinameKind = param2?param2:MultinameKind.MULTINAME_L;
         super(param2);
         this.initMultinameL(param2,param1);
      }
      
      protected function initMultinameL(param1:MultinameKind, param2:org.as3commons.bytecode.abc.NamespaceSet) : void
      {
         assertAppropriateMultinameKind([MultinameKind.MULTINAME_L,MultinameKind.MULTINAME_LA],param1);
         this._namespaceSet = param2;
      }
      
      override public function clone() : *
      {
         return new MultinameL(this._namespaceSet,this.kind);
      }
      
      public function get namespaceSet() : org.as3commons.bytecode.abc.NamespaceSet
      {
         return this._namespaceSet;
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc2_:* = false;
         if(param1 is MultinameL)
         {
            if(MultinameL(param1).namespaceSet.equals(this.namespaceSet))
            {
               if(super.equals(param1))
               {
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
      
      override public function toString() : String
      {
         return StringUtils.substitute("{0}[nsset={1}]",kind.description,this.namespaceSet);
      }
   }
}
