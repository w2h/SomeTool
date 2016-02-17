package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   import org.as3commons.bytecode.abc.enum.Opcode;
   import flash.errors.IllegalOperationError;
   import org.as3commons.lang.StringUtils;
   
   public final class Op implements ICloneable, IEquals
   {
      
      private static const ARGUMENT_TYPE_ERROR:String = "Wrong opcode argument type for opcode {0}, expected {1}, but got {2}";
      
      private static const OBJECT_TYPE_NAME:String = "object";
       
      private var _parameters:Array;
      
      private var _opcode:Opcode;
      
      public var baseLocation:uint;
      
      public var endLocation:uint;
      
      public function Op(param1:Opcode, param2:Array = null)
      {
         super();
         this._opcode = param1;
         this._parameters = param2 = param2 || [];
      }
      
      public static function checkParameters(param1:Array, param2:Opcode) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(param1.length > 0)
         {
            _loc3_ = param1.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               if(!compareTypes(param1[_loc4_],param2.argumentTypes[_loc4_][0]))
               {
                  throw new IllegalOperationError(StringUtils.substitute(ARGUMENT_TYPE_ERROR,param2,param2.argumentTypes[_loc4_][0],param1[_loc4_]));
               }
               _loc4_++;
            }
         }
      }
      
      private static function compareTypes(param1:*, param2:*) : Boolean
      {
         if(param2 === int || param2 === Integer)
         {
            return param1 is int;
         }
         if(param2 === uint || param2 === UnsignedInteger)
         {
            return param1 is uint;
         }
         if(param2 === Number)
         {
            return param1 is Number;
         }
         if(param2 === String)
         {
            return param1 is String;
         }
         if(param2 === Array)
         {
            return param1 is Array;
         }
         if(param2 !== ExceptionInfo)
         {
            return param1 is param2;
         }
         return true;
      }
      
      public function clone() : *
      {
         var _loc2_:* = undefined;
         var _loc3_:Op = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this._parameters)
         {
            if(_loc2_ is ICloneable)
            {
               _loc1_[_loc1_.length] = ICloneable(_loc2_).clone();
            }
            else
            {
               _loc1_[_loc1_.length] = _loc2_;
            }
         }
         _loc3_ = this._opcode.op(_loc1_);
         _loc3_.baseLocation = this.baseLocation;
         return _loc3_;
      }
      
      public function get parameters() : Array
      {
         return this._parameters;
      }
      
      public function get opcode() : Opcode
      {
         return this._opcode;
      }
      
      public function toString() : String
      {
         return this.baseLocation + ":" + this._opcode.opcodeName + "\t\t" + (this._parameters.length > 0?"[" + this._parameters.join(", ") + "]:":":") + this.endLocation;
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc2_:Op = param1 as Op;
         if(_loc2_ != null)
         {
            if(this._opcode.opcodeName != _loc2_.opcode.opcodeName)
            {
               return false;
            }
            if(this.parameters.length != _loc2_.parameters.length)
            {
               return false;
            }
            _loc3_ = this.parameters.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.parameters[_loc4_];
               _loc6_ = _loc2_.parameters[_loc4_];
               if(_loc5_ is IEquals)
               {
                  if(!IEquals(_loc5_).equals(_loc6_))
                  {
                     return false;
                  }
               }
               else if(_loc5_ != _loc6_)
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
