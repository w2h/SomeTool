package com.tencent.morefun.framework.apf.plugin.commandmanager
{
   import flash.events.Event;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginInfo;
   import com.tencent.morefun.framework.apf.interfaces.IPlugin;
   import com.tencent.morefun.framework.base.Command;
   
   public class CommandManagerEvent extends Event
   {
      
      public static const COMMAND_REQUEST:String = "commandRequest";
      
      public static const COMMAND_CANCEL:String = "commandCancel";
      
      public static const COMMAND_EXECUTE:String = "commandExecute";
      
      public static const COMMAND_LOAD_START:String = "commandLoadStart";
      
      public static const COMMAND_LOAD_COMPLETE:String = "commandLoadComplete";
      
      public static const COMMAND_LOAD_ERROR:String = "commandLoadError";
      
      public static const COMMAND_PLUGIN_ERROR:String = "commandPluginError";
       
      public var pluginInfo:IPluginInfo;
      
      public var plugin:IPlugin;
      
      public var command:Command;
      
      public function CommandManagerEvent(param1:String, param2:Command = null, param3:IPluginInfo = null, param4:IPlugin = null, param5:Boolean = false, param6:Boolean = false)
      {
         this.pluginInfo = param3;
         this.plugin = param4;
         this.command = param2;
         super(param1,param5,param6);
      }
      
      override public function clone() : Event
      {
         return new CommandManagerEvent(type,this.command,this.pluginInfo,this.plugin,bubbles,cancelable);
      }
      
      public function autoSetNull() : void
      {
         this.pluginInfo = null;
         this.plugin = null;
         this.command = null;
      }
   }
}
