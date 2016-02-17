package com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces
{
   import flash.events.IEventDispatcher;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo;
   
   public interface IPluginManager extends IEventDispatcher
   {
       
      function getPluginInfo(param1:String) : PluginInfo;
      
      function getTotalPluginInfo() : Vector.<PluginInfo>;
      
      function hasPlugin(param1:String) : Boolean;
      
      function getPluginResource(param1:String) : Object;
      
      function setUp(param1:XML) : void;
      
      function updateCommandRes(param1:String, param2:String, param3:String) : void;
      
      function updateLinkRes(param1:String, param2:String, param3:String, param4:int = 0, param5:Boolean = true, param6:int = 0, param7:int = 0, param8:String = "") : void;
   }
}
