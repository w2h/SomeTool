package com.tencent.morefun.framework.nofify
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.nofify.interfaces.IReceiver;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class NotifyCenter
   {
      
      public static var receiverMap:Dictionary = new Dictionary();
       
      public function NotifyCenter()
      {
         super();
      }
      
      public static function registerReceive(param1:IReceiver) : void
      {
         var _loc2_:Array = null;
         _loc2_ = receiverMap[param1.getType()];
         if(_loc2_ == null)
         {
            _loc2_ = [];
            receiverMap[param1.getType()] = _loc2_;
         }
         if(_loc2_.indexOf(param1) != -1)
         {
            return;
         }
         _loc2_.push(param1);
      }
      
      public static function unRegisterReceive(param1:IReceiver) : void
      {
         var _loc2_:Array = null;
         _loc2_ = receiverMap[param1.getType()];
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.indexOf(param1))
         {
            _loc2_.splice(_loc2_.indexOf(param1),1);
         }
      }
      
      public static function notify(param1:BaseNotice) : void
      {
         var _loc2_:Array = null;
         var _loc3_:IReceiver = null;
         _loc2_ = receiverMap[param1.getType()];
         if(_loc2_ == null)
         {
            return;
         }
         for each(_loc3_ in _loc2_)
         {
            _loc3_.receive(param1);
         }
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearDictionary(receiverMap,"autoDestroy");
         receiverMap = null;
         receiverMap = null;
      }
   }
}
