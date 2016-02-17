package com.tencent.morefun.framework.apf.interfaces
{
   import com.tencent.morefun.framework.base.Command;
   import com.tencent.morefun.naruto.language.LanguModel;
   import com.tencent.morefun.naruto.model.BaseModel;
   
   public interface IPlugin
   {
       
      function initialize(param1:XML) : void;
      
      function finalize() : void;
      
      function getPluginName() : String;
      
      function doCommand(param1:Command) : void;
      
      function callCommand(param1:Command) : void;
      
      function handlerUncatchError(param1:Error) : void;
      
      function retrieveLanguageModel(param1:String) : LanguModel;
      
      function hasLanguageModel(param1:String) : Boolean;
      
      function registerLanguageModel(param1:LanguModel) : void;
      
      function removeLanguageModel(param1:String) : void;
      
      function retrieveModel(param1:String) : BaseModel;
      
      function hasModel(param1:String) : Boolean;
      
      function registerModel(param1:BaseModel) : void;
      
      function removeModel(param1:String) : void;
   }
}
