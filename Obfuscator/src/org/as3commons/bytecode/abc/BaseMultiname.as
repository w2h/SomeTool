package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.abc.enum.MultinameKind;
   import flash.errors.IllegalOperationError;
   import org.as3commons.lang.StringUtils;
   
   public class BaseMultiname implements ICloneable, IEquals
   {
      
      private static const NOT_IMPLEMENTED_ERROR:String = "Not implemented in BaseMultiname";
      
      private static const BASE_MULTINAME_TOSTRING_TEMPLATE:String = "BaseMultiname[kind={0}]";
       
      private var _kind:MultinameKind;
      
      public var poolIndex:uint;
      
      public function BaseMultiname(param1:MultinameKind)
      {
         super();
         this._kind = param1;
      }
      
      public function clone() : *
      {
         throw new IllegalOperationError(NOT_IMPLEMENTED_ERROR);
      }
      
      public function assertAppropriateMultinameKind(param1:Array, param2:MultinameKind) : void
      {
         if(param1.indexOf(param2) == -1)
         {
            throw new Error("Invalid Multiname Kind: " + param2);
         }
      }
      
      public function get kind() : MultinameKind
      {
         return this._kind;
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc2_:* = false;
         var _loc3_:BaseMultiname = BaseMultiname(param1);
         if(_loc3_.kind === this.kind)
         {
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function toString() : String
      {
         return StringUtils.substitute(BASE_MULTINAME_TOSTRING_TEMPLATE,this._kind);
      }
      
      public function toHash() : String
      {
         return this.poolIndex.toString();
      }
   }
}
