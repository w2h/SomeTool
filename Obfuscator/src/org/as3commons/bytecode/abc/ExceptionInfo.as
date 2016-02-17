package org.as3commons.bytecode.abc
{
   import org.as3commons.lang.ICloneable;
   import org.as3commons.lang.IEquals;
   
   public class ExceptionInfo implements ICloneable, IEquals
   {
       
      public var exceptionEnabledFromCodePosition:int;
      
      public var exceptionEnabledFromOpcode:org.as3commons.bytecode.abc.Op;
      
      public var exceptionEnabledToCodePosition:int;
      
      public var exceptionEnabledToOpcode:org.as3commons.bytecode.abc.Op;
      
      public var codePositionToJumpToOnException:int;
      
      public var opcodeToJumpToOnException:org.as3commons.bytecode.abc.Op;
      
      public var exceptionType:org.as3commons.bytecode.abc.QualifiedName;
      
      public var variableReceivingException:org.as3commons.bytecode.abc.QualifiedName;
      
      public function ExceptionInfo()
      {
         super();
      }
      
      public function clone() : *
      {
         var _loc1_:ExceptionInfo = new ExceptionInfo();
         _loc1_.exceptionEnabledFromCodePosition = this.exceptionEnabledFromCodePosition;
         _loc1_.exceptionEnabledFromOpcode = this.exceptionEnabledFromOpcode.clone() as org.as3commons.bytecode.abc.Op;
         _loc1_.exceptionEnabledToCodePosition = this.exceptionEnabledToCodePosition;
         _loc1_.exceptionEnabledToOpcode = this.exceptionEnabledToOpcode.clone() as org.as3commons.bytecode.abc.Op;
         _loc1_.codePositionToJumpToOnException = this.codePositionToJumpToOnException;
         _loc1_.opcodeToJumpToOnException = this.opcodeToJumpToOnException.clone() as org.as3commons.bytecode.abc.Op;
         _loc1_.exceptionType = this.exceptionType.clone() as org.as3commons.bytecode.abc.QualifiedName;
         _loc1_.variableReceivingException = this.variableReceivingException.clone() as org.as3commons.bytecode.abc.QualifiedName;
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "ExceptionInfo{exceptionEnabledFromCodePosition:" + this.exceptionEnabledFromCodePosition + ", exceptionEnabledToCodePosition:" + this.exceptionEnabledToCodePosition + ", codePositionToJumpToOnException:" + this.codePositionToJumpToOnException + ", exceptionTypeName:\"" + this.exceptionType + "\", nameOfVariableReceivingException:\"" + this.variableReceivingException + "\"}";
      }
      
      public function equals(param1:Object) : Boolean
      {
         var _loc2_:ExceptionInfo = param1 as ExceptionInfo;
         if(_loc2_ != null)
         {
            if(this.exceptionEnabledFromCodePosition != _loc2_.exceptionEnabledFromCodePosition)
            {
               return false;
            }
            if(!this.exceptionEnabledFromOpcode.equals(_loc2_.exceptionEnabledFromOpcode))
            {
               return false;
            }
            if(this.exceptionEnabledToCodePosition != _loc2_.exceptionEnabledToCodePosition)
            {
               return false;
            }
            if(!this.exceptionEnabledToOpcode.equals(_loc2_.exceptionEnabledToOpcode))
            {
               return false;
            }
            if(this.codePositionToJumpToOnException != _loc2_.codePositionToJumpToOnException)
            {
               return false;
            }
            if(!this.opcodeToJumpToOnException.equals(_loc2_.opcodeToJumpToOnException))
            {
               return false;
            }
            if(!this.exceptionType.equals(_loc2_.exceptionType))
            {
               return false;
            }
            if(!this.variableReceivingException.equals(_loc2_.variableReceivingException))
            {
               return false;
            }
            return true;
         }
         return false;
      }
   }
}
