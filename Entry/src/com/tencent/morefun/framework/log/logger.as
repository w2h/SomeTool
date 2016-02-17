package com.tencent.morefun.framework.log
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.log.interfaces.ILogHandler;
   import com.netease.protobuf.Message;
   import flash.utils.ByteArray;
   import com.tencent.morefun.framework.log.handler.OutPutFileLogHander;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class logger
   {
      
      public static var isDebug:Boolean = false;
      
      private static var ms_logHandlerMap:Dictionary = new Dictionary();
       
      public function logger()
      {
         super();
      }
      
      public static function addOutHandler(param1:ILogHandler) : void
      {
         ms_logHandlerMap[param1] = 1;
      }
      
      public static function getOutHandlers() : Dictionary
      {
         return ms_logHandlerMap;
      }
      
      public static function output(... rest) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:ILogHandler = null;
         var _loc2_:String = "";
         for(_loc4_ in ms_logHandlerMap)
         {
            _loc4_.flush(rest);
         }
      }
      
      public static function outputMessage(param1:Message) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:ILogHandler = null;
         for(_loc3_ in ms_logHandlerMap)
         {
            _loc3_.flushMessage(param1);
         }
      }
      
      public static function getLogBytes() : ByteArray
      {
         var _loc1_:* = undefined;
         for(_loc1_ in ms_logHandlerMap)
         {
            if(_loc1_ is OutPutFileLogHander)
            {
               return (_loc1_ as OutPutFileLogHander).exportToBytes();
            }
         }
         return null;
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(ms_logHandlerMap,"autoDestroy");
         ms_logHandlerMap = null;
         ms_logHandlerMap = null;
      }
   }
}
