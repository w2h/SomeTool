package com.tencent.morefun.framework.net.loaders
{
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   
   [Event(name="finish",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="complete",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="abort",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   [Event(name="progress",type="com.tencent.morefun.framework.net.events.LoadEvent")]
   public interface IFileLoader extends IEventDispatcher
   {
       
      function load(param1:String) : void;
      
      function loadBytes(param1:ByteArray, param2:String) : void;
      
      function abort() : void;
      
      function dispose() : void;
      
      function get url() : String;
   }
}
