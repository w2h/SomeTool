package com.tencent.morefun.framework.log.handler
{
   import com.tencent.morefun.framework.log.interfaces.ILogHandler;
   import com.netease.protobuf.Message;
   import com.tencent.morefun.framework.log.logger;
   
   public class IDELogHander implements ILogHandler
   {
       
      public function IDELogHander()
      {
         super();
      }
      
      public function flush(param1:Array) : void
      {
         var _loc2_:String = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc2_ + (param1[_loc3_] + "  ");
            _loc3_++;
         }
      }
      
      public function flushMessage(param1:Message) : void
      {
         if(logger.isDebug)
         {
         }
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
