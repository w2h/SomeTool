package com.tencent.morefun.naruto.base.interfaces
{
   import flash.events.IEventDispatcher;
   
   public interface INarutoServer extends IEventDispatcher
   {
       
      function get socketConnecter() : Object;
      
      function initialize(param1:XML) : void;
      
      function finalize() : void;
      
      function getPluginName() : String;
   }
}
