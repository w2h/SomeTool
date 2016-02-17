package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.abc.enum.TraitKind;
   
   public class BaseTypeInfo implements IEquals
   {
       
      public var traits:Vector.<org.as3commons.bytecode.abc.TraitInfo>;
      
      public function BaseTypeInfo()
      {
         super();
         this.traits = new Vector.<org.as3commons.bytecode.abc.TraitInfo>();
      }
      
      public function addTrait(param1:org.as3commons.bytecode.abc.TraitInfo) : void
      {
         if(this.traits.indexOf(param1) < 0)
         {
            this.traits[this.traits.length] = param1;
         }
      }
      
      public function removeTrait(param1:org.as3commons.bytecode.abc.TraitInfo) : void
      {
         var _loc2_:int = this.traits.indexOf(param1);
         if(_loc2_ > -1)
         {
            this.traits.splice(_loc2_,1);
         }
      }
      
      public function getSlotTraitByName(param1:String) : SlotOrConstantTrait
      {
         var _loc3_:SlotOrConstantTrait = null;
         var _loc2_:Array = this.slotOrConstantTraits;
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.traitMultiname.name == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function getMethodTraitByName(param1:String) : MethodTrait
      {
         var _loc3_:MethodTrait = null;
         var _loc2_:Vector.<org.as3commons.bytecode.abc.TraitInfo> = this.methodTraits;
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.traitMultiname.name == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function removeMethodTrait(param1:MethodTrait) : void
      {
         var _loc2_:int = this.traits.indexOf(param1);
         if(_loc2_ > -1)
         {
            this.traits.splice(_loc2_,1);
         }
      }
      
      public function get slotOrConstantTraits() : Array
      {
         var _loc2_:org.as3commons.bytecode.abc.TraitInfo = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.traits)
         {
            if(_loc2_ is SlotOrConstantTrait)
            {
               _loc1_[_loc1_.length] = _loc2_;
            }
         }
         return _loc1_;
      }
      
      public function getTraitsByKind(param1:TraitKind) : Vector.<org.as3commons.bytecode.abc.TraitInfo>
      {
         var traitKind:TraitKind = param1;
         return this.traits.filter(function(param1:TraitInfo, param2:int, param3:Vector.<TraitInfo>):Boolean
         {
            return param1.traitKind === traitKind;
         });
      }
      
      public function get methodTraits() : Vector.<org.as3commons.bytecode.abc.TraitInfo>
      {
         return this.getTraitsByKind(TraitKind.METHOD);
      }
      
      public function get methodInfo() : Vector.<MethodInfo>
      {
         var _loc3_:MethodTrait = null;
         var _loc1_:Vector.<org.as3commons.bytecode.abc.TraitInfo> = this.methodTraits.concat(this.getterTraits).concat(this.setterTraits);
         var _loc2_:Vector.<MethodInfo> = new Vector.<MethodInfo>();
         for each(_loc3_ in _loc1_)
         {
            _loc2_[_loc2_.length] = _loc3_.traitMethod;
         }
         return _loc2_;
      }
      
      public function get getterTraits() : Vector.<org.as3commons.bytecode.abc.TraitInfo>
      {
         return this.getTraitsByKind(TraitKind.GETTER);
      }
      
      public function get setterTraits() : Vector.<org.as3commons.bytecode.abc.TraitInfo>
      {
         return this.getTraitsByKind(TraitKind.SETTER);
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:org.as3commons.bytecode.abc.TraitInfo = null;
         var _loc6_:org.as3commons.bytecode.abc.TraitInfo = null;
         var _loc2_:BaseTypeInfo = param1 as BaseTypeInfo;
         if(_loc2_ != null)
         {
            if(this.traits.length != _loc2_.traits.length)
            {
               return false;
            }
            _loc3_ = this.traits.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.traits[_loc4_];
               _loc6_ = _loc2_.traits[_loc4_];
               if(!_loc5_.equals(_loc6_))
               {
                  return false;
               }
               _loc4_++;
            }
            return true;
         }
         return false;
      }
   }
}
