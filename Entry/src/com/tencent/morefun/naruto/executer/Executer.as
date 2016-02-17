package com.tencent.morefun.naruto.executer
{
   import com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces.IExecuter;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import com.tencent.morefun.naruto.base.interfaces.ISocketServer;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginManager;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces.ICommandManager;
   import com.tencent.morefun.framework.base.Command;
   import com.tencent.morefun.naruto.language.LanguModel;
   import flash.utils.getQualifiedClassName;
   
   public class Executer implements IExecuter
   {
       
      private var _plugin:Plugin;
      
      protected var pluginName:String;
      
      protected var executerName:String;
      
      public function Executer(param1:String, param2:String = null)
      {
         super();
         this.pluginName = param1;
         this.executerName = param2 || getQualifiedClassName(this).replace("::",".") + "." + Math.random();
         this._plugin = Facade.getInstance().retrievePlugin(param1) as Plugin;
      }
      
      protected function get gameServer() : ISocketServer
      {
         return (this.plugin as Plugin).getNarutoServer();
      }
      
      protected function get plugin() : Plugin
      {
         return this._plugin;
      }
      
      public function getPluginName() : String
      {
         return this.pluginName;
      }
      
      public function getExecuterName() : String
      {
         return this.executerName;
      }
      
      public function getPluginManager() : IPluginManager
      {
         return Facade.getInstance().pluginManager;
      }
      
      public function getCommandManager() : ICommandManager
      {
         return Facade.getInstance().commandManager;
      }
      
      protected function updateCommandRes(param1:String, param2:String) : void
      {
         this.getPluginManager().updateCommandRes(this.getPluginName(),param1,param2);
      }
      
      protected function updateLinkRes(param1:String, param2:String, param3:int = 0, param4:Boolean = true, param5:int = 0, param6:int = 0, param7:String = null) : void
      {
         this.getPluginManager().updateLinkRes(this.getPluginName(),param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function destroy() : void
      {
         this._plugin = null;
      }
      
      protected function get pluginConfig() : XML
      {
         return this.getPluginManager().getPluginInfo(this.pluginName).info.copy();
      }
      
      protected function getConfig(param1:String) : XML
      {
         return this.getPluginManager().getPluginResource(this.pluginName)[param1] as XML;
      }
      
      public function getPluginAsset(param1:String) : Object
      {
         return this.getPluginManager().getPluginResource(this.pluginName)[param1];
      }
      
      protected function getConfigLink(param1:String) : XML
      {
         var config:XML = null;
         var links:XMLList = null;
         var link:XML = null;
         var name:String = param1;
         config = this.pluginConfig;
         links = config..link;
         link = links.(@name == name)[0];
         return link;
      }
      
      public function finalize() : void
      {
         this._plugin = null;
      }
      
      public function callCommand(param1:Command) : void
      {
         Facade.getInstance().commandManager.callCommand(param1);
      }
      
      public function doCommand(param1:Command) : void
      {
      }
      
      public function commandFilter(param1:Command) : Boolean
      {
         return true;
      }
      
      public function getLanguage(param1:String, param2:int) : String
      {
         var _loc3_:LanguModel = Facade.getInstance().languageModel.retrieveLanguModel(param1);
         return _loc3_.getStr(param2);
      }
      
      public function autoSetNull() : void
      {
         this._plugin = null;
         this.pluginName = null;
         this.executerName = null;
      }
   }
}
