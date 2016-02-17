package org.as3commons.bytecode.abc
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class ByteCodeErrorEvent extends Event
   {
      
      public static const BYTECODE_METHODBODY_ERROR:String = "bytecodeMethodBodyError";
       
      private var _bytecodeFragment:ByteArray;
      
      private var _position:int;
      
      public function ByteCodeErrorEvent(param1:String, param2:ByteArray, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this._bytecodeFragment = param2;
         this._position = param3;
      }
      
      public function get position() : int
      {
         return this._position;
      }
      
      public function get bytecodeFragment() : ByteArray
      {
         return this._bytecodeFragment;
      }
      
      override public function clone() : Event
      {
         return new ByteCodeErrorEvent(this.type,this.bytecodeFragment,this.position,this.bubbles,this.cancelable);
      }
   }
}
