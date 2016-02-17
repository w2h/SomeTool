package org.as3commons.bytecode.typeinfo
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.abc.enum.ConstantKind;
   import org.as3commons.bytecode.abc.BaseMultiname;
   
   public final class Argument implements ICloneable, IEquals
   {
       
      public var name:String;
      
      public var defaultValue;
      
      public var isOptional:Boolean;
      
      public var kind:ConstantKind;
      
      public var type:BaseMultiname;
      
      public function Argument(param1:BaseMultiname = null, param2:Boolean = false, param3:* = null, param4:ConstantKind = null)
      {
         super();
         this.type = param1;
         this.isOptional = param2;
         this.defaultValue = param3;
         this.kind = param4;
      }
      
      public function clone() : *
      {
         return new Argument(this.type,this.isOptional,this.defaultValue,this.kind);
      }
      
      public function toString() : String
      {
         return this.type + "";
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc2_:Argument = param1 as Argument;
         if(_loc2_ != null)
         {
            if(this.name != _loc2_.name)
            {
               return false;
            }
            if(!isNaN(this.defaultValue))
            {
               if(this.defaultValue !== _loc2_.defaultValue)
               {
                  return false;
               }
            }
            else if(isNaN(this.defaultValue) && isNaN(_loc2_.defaultValue) == false)
            {
               return false;
            }
            if(this.isOptional != _loc2_.isOptional)
            {
               return false;
            }
            if(this.kind !== _loc2_.kind)
            {
               return false;
            }
            if(!this.type.equals(_loc2_.type))
            {
               return false;
            }
            return true;
         }
         return false;
      }
   }
}
