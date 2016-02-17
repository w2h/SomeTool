package com.tencent.morefun.framework.net
{
   import flash.events.EventDispatcher;
   
   [Event(name="mainTaskStart",type="com.tencent.morefun.framework.net.events.LoadNotifyEvent")]
   [Event(name="lazyTaskStart",type="com.tencent.morefun.framework.net.events.LoadNotifyEvent")]
   [Event(name="mainTaskComplete",type="com.tencent.morefun.framework.net.events.LoadNotifyEvent")]
   [Event(name="lazyTaskComplete",type="com.tencent.morefun.framework.net.events.LoadNotifyEvent")]
   [Event(name="allTaskComplete",type="com.tencent.morefun.framework.net.events.LoadNotifyEvent")]
   public class LoaderNotifier extends EventDispatcher
   {
       
      public function LoaderNotifier()
      {
         super();
      }
   }
}
