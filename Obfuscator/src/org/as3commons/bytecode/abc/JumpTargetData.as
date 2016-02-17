package org.as3commons.bytecode.abc
{
   import org.as3commons.bytecode.abc.enum.Opcode;
   import flash.errors.IllegalOperationError;
   
   public final class JumpTargetData
   {
       
      private var _jumpOpcode:org.as3commons.bytecode.abc.Op;
      
      private var _targetOpcode:org.as3commons.bytecode.abc.Op;
      
      private var _extraOpcodes:Vector.<org.as3commons.bytecode.abc.Op>;
      
      public function JumpTargetData(param1:org.as3commons.bytecode.abc.Op = null, param2:org.as3commons.bytecode.abc.Op = null)
      {
         super();
         this._jumpOpcode = param1;
         this._targetOpcode = param2;
      }
      
      public function get extraOpcodes() : Vector.<org.as3commons.bytecode.abc.Op>
      {
         return this._extraOpcodes;
      }
      
      public function get targetOpcode() : org.as3commons.bytecode.abc.Op
      {
         return this._targetOpcode;
      }
      
      public function set targetOpcode(param1:org.as3commons.bytecode.abc.Op) : void
      {
         this._targetOpcode = param1;
      }
      
      public function addTarget(param1:org.as3commons.bytecode.abc.Op) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._extraOpcodes = this._extraOpcodes || new Vector.<org.as3commons.bytecode.abc.Op>();
         this._extraOpcodes[this._extraOpcodes.length] = param1;
      }
      
      public function get jumpOpcode() : org.as3commons.bytecode.abc.Op
      {
         return this._jumpOpcode;
      }
      
      public function set jumpOpcode(param1:org.as3commons.bytecode.abc.Op) : void
      {
         this._jumpOpcode = param1;
         if(this._jumpOpcode != null && Opcode.jumpOpcodes[this._jumpOpcode.opcode] == null)
         {
            throw new IllegalOperationError("Opcode " + this._jumpOpcode.opcode.opcodeName + " is not a jump code");
         }
      }
   }
}
