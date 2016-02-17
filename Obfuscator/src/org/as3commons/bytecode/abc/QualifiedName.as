package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   import org.as3commons.lang.StringUtils;
   
   public class QualifiedName extends NamedMultiname
   {
      
      private static const ASTERISK:String = "*";
       
      private var _namespace:org.as3commons.bytecode.abc.LNamespace;
      
      public function QualifiedName(param1:String, param2:org.as3commons.bytecode.abc.LNamespace, param3:MultinameKind = null)
      {
         var param3:MultinameKind = param3?param3:MultinameKind.QNAME;
         super(param3,param1);
         this.initQualifiedName(param2,param3);
      }
      
      protected function initQualifiedName(param1:org.as3commons.bytecode.abc.LNamespace, param2:MultinameKind) : void
      {
         this._namespace = param1;
         if(assertAppropriateMultinameKind([MultinameKind.QNAME,MultinameKind.QNAME_A],param2))
         {
            throw new Error("Invalid multiname kind: " + param2);
         }
      }
      
      public function get nameSpace() : org.as3commons.bytecode.abc.LNamespace
      {
         return this._namespace;
      }
      
      public function set nameSpace(param1:org.as3commons.bytecode.abc.LNamespace) : void
      {
         this._namespace = param1;
      }
      
      public function get fullName() : String
      {
         if(this.name != ASTERISK)
         {
            if(StringUtils.hasText(this._namespace.name))
            {
               return StringUtils.substitute("{0}.{1}",this._namespace.name,this.name);
            }
            return this.name;
         }
         return ASTERISK;
      }
      
      override public function toString() : String
      {
         return StringUtils.substitute("{0}[{1}:{2}]",kind.description,this.nameSpace,name);
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc2_:* = false;
         if(param1 is QualifiedName)
         {
            if(this._namespace.equals(QualifiedName(param1).nameSpace))
            {
               if(NamedMultiname(param1).name == this.name)
               {
                  if(super.equals(param1))
                  {
                     _loc2_ = true;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      override public function clone() : *
      {
         return new QualifiedName(this.name,this._namespace.clone(),this.kind);
      }
   }
}
