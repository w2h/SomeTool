package com.tencent.morefun.framework.apf.core.plugin
{
   import flash.display.Sprite;
   import com.tencent.morefun.framework.apf.interfaces.IPlugin;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces.IExecuter;
   import com.tencent.morefun.framework.base.Command;
   import com.tencent.morefun.naruto.sound.interfaces.ISoundManager;
   import com.tencent.morefun.naruto.sound.interfaces.INarutoSound;
   import com.tencent.morefun.naruto.base.interfaces.ISocketServer;
   import com.tencent.morefun.naruto.base.interfaces.INarutoServer;
   import com.tencent.morefun.naruto.language.LanguModel;
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.utils.getQualifiedClassName;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class Plugin extends Sprite implements IPlugin
   {
      
      protected static var narutoFacade:Facade = Facade.getInstance();
      
      protected static var ready:Boolean;
       
      public var languagelist:Array;
      
      public function Plugin()
      {
         this.languagelist = new Array();
         super();
      }
      
      protected function registerExecuter(param1:IExecuter) : IExecuter
      {
         return this.facade.getCommandManager().registerExecuter(param1);
      }
      
      protected function hasExecuter(param1:String) : Boolean
      {
         return this.facade.getCommandManager().hasExecuter(param1);
      }
      
      protected function retrieveExecuter(param1:String) : IExecuter
      {
         return this.facade.getCommandManager().retrieveExecuter(param1);
      }
      
      protected function removeExecuter(param1:String) : IExecuter
      {
         return this.facade.getCommandManager().removeExecuter(param1);
      }
      
      protected function removeAllExecuter() : void
      {
         this.facade.getCommandManager().removeAllExecuter(this.getPluginName());
      }
      
      private function getLanguageInfo(param1:int) : String
      {
         return this.languagelist[param1] as String;
      }
      
      public function get facade() : Facade
      {
         return Plugin.narutoFacade;
      }
      
      public function getResource(param1:String) : Object
      {
         return this.facade.getPluginManager().getPluginResource(param1);
      }
      
      public function getPluginResource(param1:String) : Object
      {
         return Facade.getInstance().pluginManager.getPluginResource(this.getPluginName())[param1];
      }
      
      public function handlerUncatchError(param1:Error) : void
      {
      }
      
      public function callCommand(param1:Command) : void
      {
         this.facade.getCommandManager().callCommand(param1);
      }
      
      public function doCommand(param1:Command) : void
      {
      }
      
      public function getSoundManager() : ISoundManager
      {
         return (this.facade.retrievePlugin("sound.INarutoSound") as INarutoSound).manager;
      }
      
      public function getNarutoServer() : ISocketServer
      {
         return (this.facade.retrievePlugin("server.INarutoServer") as INarutoServer).socketConnecter as ISocketServer;
      }
      
      public function retrieveLanguageModel(param1:String) : LanguModel
      {
         return this.facade.languageModel.retrieveLanguModel(param1);
      }
      
      public function hasLanguageModel(param1:String) : Boolean
      {
         return this.facade.languageModel.hasLanguModel(param1);
      }
      
      public function registerLanguageModel(param1:LanguModel) : void
      {
         this.facade.languageModel.registerLanguageModel(param1);
      }
      
      public function removeLanguageModel(param1:String) : void
      {
         this.facade.languageModel.removeLanguageModel(param1);
      }
      
      public function retrieveModel(param1:String) : BaseModel
      {
         return this.facade.model.retrieveModel(param1);
      }
      
      public function hasModel(param1:String) : Boolean
      {
         return this.facade.model.hasModel(param1);
      }
      
      public function registerModel(param1:BaseModel) : void
      {
         param1.registerPluginName = this.getPluginName();
         this.facade.model.registerModel(param1);
      }
      
      public function removeModel(param1:String) : void
      {
         this.facade.model.removeModel(param1);
      }
      
      public function removeAllModel() : void
      {
         this.facade.model.removeAllModel(this.getPluginName());
      }
      
      public function getExecuterName() : String
      {
         return this.getPluginName() + ".MainExecuter";
      }
      
      public function getPluginName() : String
      {
         throw new Error(getQualifiedClassName(this) + "未处理getPluginName()函数");
      }
      
      public function initialize(param1:XML) : void
      {
         throw new Error(this.getPluginName() + "未处理initialize()函数");
      }
      
      public function finalize() : void
      {
      }
      
      public function hasPlugin(param1:String) : Boolean
      {
         return this.facade.hasPlugin(param1);
      }
      
      public function retrievePlugin(param1:String) : IPlugin
      {
         return this.facade.retrievePlugin(param1);
      }
      
      public function autoSetNull() : void
      {
         CollectionClearUtil.clearList(this.languagelist,"autoDestroy");
         this.languagelist = null;
         narutoFacade = null;
         this.languagelist = null;
      }
   }
}
