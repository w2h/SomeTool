package com.tencent.morefun.naruto.util
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.events.Event;
   
   [Event(name="change",type="flash.events.Event")]
   public class MultiFlags extends EventDispatcher
   {
       
      private var _bytes:ByteArray;
      
      private var _offset:uint;
      
      public function MultiFlags()
      {
         super();
         this._bytes = new ByteArray();
      }
      
      public function setFlag(param1:uint, param2:Boolean) : void
      {
         this._offset = param1;
         if(this.getFlag(this._offset) == param2)
         {
            return;
         }
         var _loc3_:uint = Math.ceil((this._offset + 1) / 8);
         if(this._bytes.length < _loc3_)
         {
            this._bytes.length = _loc3_;
         }
         this._bytes.position = _loc3_ - 1;
         var _loc4_:uint = this._offset % 8;
         var _loc5_:uint = this._bytes.readUnsignedByte();
         _loc5_ = ~(1 << _loc4_) & _loc5_ | int(param2) << _loc4_;
         this._bytes.position--;
         this._bytes.writeByte(_loc5_);
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function getFlag(param1:uint) : Boolean
      {
         var _loc2_:uint = Math.ceil((param1 + 1) / 8);
         if(_loc2_ > this._bytes.length)
         {
            return false;
         }
         this._bytes.position = _loc2_ - 1;
         return Boolean(this._bytes.readUnsignedByte() & 1 << param1 % 8);
      }
      
      public function toggle(param1:uint) : Boolean
      {
         this._offset = param1;
         var _loc2_:uint = Math.ceil((this._offset + 1) / 8);
         if(this._bytes.length < _loc2_)
         {
            this._bytes.length = _loc2_;
         }
         this._bytes.position = _loc2_ - 1;
         var _loc3_:uint = this._offset % 8;
         var _loc4_:uint = this._bytes.readUnsignedByte();
         _loc4_ = _loc4_ ^ 1 << _loc3_;
         this._bytes.position--;
         this._bytes.writeByte(_loc4_);
         dispatchEvent(new Event(Event.CHANGE));
         return this.getFlag(this._offset);
      }
      
      public function reset() : void
      {
         this._bytes.clear();
      }
      
      override public function toString() : String
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         this._bytes.position = 0;
         var _loc1_:String = "";
         while(this._bytes.bytesAvailable)
         {
            _loc2_ = this._bytes.readUnsignedByte();
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               _loc1_ = _loc1_ + (_loc2_ >>> _loc3_ & 1);
               _loc3_++;
            }
            _loc1_ = _loc1_ + " ";
         }
         return _loc1_;
      }
      
      public function get offset() : uint
      {
         return this._offset;
      }
      
      public function get bytes() : ByteArray
      {
         return this._bytes;
      }
   }
}
