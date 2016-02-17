package com.tencent.morefun.naruto.base.interfaces
{
   import com.netease.protobuf.Message;
   import flash.utils.ByteArray;
   
   public interface ISocketProtocol
   {
       
      function get commandId() : uint;
      
      function set commandId(param1:uint) : void;
      
      function get index() : uint;
      
      function set index(param1:uint) : void;
      
      function get type() : uint;
      
      function set type(param1:uint) : void;
      
      function set clientMessage(param1:Message) : void;
      
      function get clientMessage() : Message;
      
      function set serverMessage(param1:Message) : void;
      
      function get serverMessage() : Message;
      
      function set error(param1:int) : void;
      
      function get error() : int;
      
      function set errorStr(param1:String) : void;
      
      function get errorStr() : String;
      
      function get bytesLength() : Number;
      
      function get bytes() : ByteArray;
      
      function set bytes(param1:ByteArray) : void;
      
      function get data() : ByteArray;
      
      function encodeByMessage() : void;
      
      function decodeByMessage(param1:ByteArray) : void;
      
      function encodeByBytes() : void;
      
      function decodeByBytes(param1:ByteArray) : void;
   }
}
