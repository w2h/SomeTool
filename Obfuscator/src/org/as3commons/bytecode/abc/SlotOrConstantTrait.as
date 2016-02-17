package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.abc.enum.ConstantKind;
   import org.as3commons.bytecode.typeinfo.Annotatable;
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.StringUtils;
   
   public final class SlotOrConstantTrait extends TraitInfo
   {
       
      public var slotId:int;
      
      public var typeMultiname:org.as3commons.bytecode.abc.BaseMultiname;
      
      public var vindex:int = 0;
      
      public var vkind:ConstantKind = null;
      
      public var isStatic:Boolean;
      
      public var defaultValue;
      
      public function SlotOrConstantTrait()
      {
         super();
      }
      
      override public function clone() : *
      {
         var _loc1_:SlotOrConstantTrait = new SlotOrConstantTrait();
         this.populateClone(_loc1_);
      }
      
      override protected function populateClone(param1:Annotatable) : void
      {
         super.populateClone(param1);
         var _loc2_:SlotOrConstantTrait = SlotOrConstantTrait(param1);
         _loc2_.slotId = this.slotId;
         _loc2_.typeMultiname = this.typeMultiname.clone();
         _loc2_.vindex = this.vindex;
         _loc2_.vkind = this.vkind;
         _loc2_.isStatic = this.isStatic;
         _loc2_.defaultValue = this.defaultValue is ICloneable?ICloneable(this.defaultValue).clone():this.defaultValue;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute("SlotOrConstantTrait[name={0}, metadata={1}, kind={2}, slot={3}, typeName={4}, vindex={5}, vkind={6}]",traitMultiname?traitMultiname:"",metadata,traitKind.description,this.slotId,this.typeMultiname,this.vindex,this.vkind?this.vkind:"");
      }
      
      override public function equals(param1:Object) : Boolean
      {
         var _loc3_:SlotOrConstantTrait = null;
         var _loc2_:Boolean = super.equals(param1);
         if(_loc2_)
         {
            _loc3_ = param1 as SlotOrConstantTrait;
            if(_loc3_ != null)
            {
               if(this.slotId != _loc3_.slotId)
               {
                  return false;
               }
               if(!this.typeMultiname.equals(_loc3_.typeMultiname))
               {
                  return false;
               }
               if(this.vindex != _loc3_.vindex)
               {
                  return false;
               }
               if(this.vkind !== _loc3_.vkind)
               {
                  return false;
               }
               if(this.isStatic != _loc3_.isStatic)
               {
                  return false;
               }
               if(!isNaN(this.defaultValue))
               {
                  if(this.defaultValue !== _loc3_.defaultValue)
                  {
                     return false;
                  }
               }
               else if(isNaN(this.defaultValue) && isNaN(_loc3_.defaultValue) == false)
               {
                  return false;
               }
            }
            else
            {
               return false;
            }
         }
         return _loc2_;
      }
   }
}
