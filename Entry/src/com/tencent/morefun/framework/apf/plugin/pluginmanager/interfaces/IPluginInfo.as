package com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces
{
   public interface IPluginInfo
   {
       
      function get info() : XML;
      
      function get config() : XML;
      
      function get name() : String;
      
      function get interfaceName() : String;
      
      function get entityName() : String;
      
      function get resource() : XMLList;
      
      function get logic() : XMLList;
      
      function get language() : XMLList;
      
      function get languList() : XML;
      
      function set languList(param1:XML) : void;
      
      function get rely() : Array;
      
      function set relyXml(param1:XML) : void;
      
      function get status() : uint;
      
      function set status(param1:uint) : void;
      
      function get resObject() : Object;
   }
}
