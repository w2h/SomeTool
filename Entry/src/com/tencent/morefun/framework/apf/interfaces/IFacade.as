package com.tencent.morefun.framework.apf.interfaces
{
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginInfo;
   import com.tencent.morefun.naruto.model.ModelManager;
   import com.tencent.morefun.naruto.language.LanguageModelManager;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManager;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginManager;
   
   public interface IFacade
   {
       
      function hasPlugin(param1:String) : Boolean;
      
      function registerPlugin(param1:IPlugin, param2:IPluginInfo) : IPlugin;
      
      function retrievePlugin(param1:String) : IPlugin;
      
      function removePlugin(param1:String) : IPlugin;
      
      function get model() : ModelManager;
      
      function get languageModel() : LanguageModelManager;
      
      function get commandManager() : CommandManager;
      
      function get pluginManager() : PluginManager;
   }
}
