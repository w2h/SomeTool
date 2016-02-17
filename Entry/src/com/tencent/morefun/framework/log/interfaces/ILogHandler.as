package com.tencent.morefun.framework.log.interfaces
{
   import com.netease.protobuf.Message;
   
   public interface ILogHandler
   {
       
      function flush(param1:Array) : void;
      
      function flushMessage(param1:Message) : void;
   }
}
