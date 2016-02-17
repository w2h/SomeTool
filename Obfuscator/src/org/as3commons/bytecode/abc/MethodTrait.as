package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.abc.enum.TraitKind;
   import org.as3commons.lang.StringUtils;
   
   public final class MethodTrait extends TraitInfo
   {
       
      public var dispositionId:int = 0;
      
      public var traitMethod:org.as3commons.bytecode.abc.MethodInfo;
      
      public var isStatic:Boolean;
      
      public function MethodTrait()
      {
         super();
      }
      
      public function get isGetter() : Boolean
      {
         return traitKind == TraitKind.GETTER;
      }
      
      public function get isSetter() : Boolean
      {
         return traitKind == TraitKind.SETTER;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("MethodTrait[name={0}, override={1}, metadata={2}, dispositionId={3}, method={4}]",traitMultiname,isOverride,metadata,this.dispositionId,this.traitMethod);
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc3_:MethodTrait = null;
         var _loc2_:Boolean = super.equals(param1);
         if(_loc2_)
         {
            _loc3_ = param1 as MethodTrait;
            if(_loc3_ != null)
            {
               if(this.dispositionId != _loc3_.dispositionId)
               {
                  return false;
               }
               if(!this.traitMethod.equals(_loc3_.traitMethod))
               {
                  return false;
               }
               if(this.isStatic != _loc3_.isStatic)
               {
                  return false;
               }
               return true;
            }
            return false;
         }
         return _loc2_;
      }
   }
}
