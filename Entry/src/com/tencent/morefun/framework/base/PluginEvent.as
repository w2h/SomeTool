package com.tencent.morefun.framework.base
{
   import flash.events.Event;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo;
   
   public class PluginEvent extends Event
   {
      
      public static const PLUGIN_REGISTER:String = "pluginRegister";
       
      public var pluginInfo:PluginInfo;
      
      public var data;
      
      public function PluginEvent(param1:String, param2:PluginInfo, param3:* = null)
      {
         this.data = param3;
         this.pluginInfo = param2;
         super(param1,false,false);
      }
      
      override public function clone() : Event
      {
         return new PluginEvent(type,this.pluginInfo,this.data);
      }
      
      override public function toString() : String
      {
         return formatToString("PluginEvent","type","data","bubbles","cancelable","eventPhase");
      }
   }
}
