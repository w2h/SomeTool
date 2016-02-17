package com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces
{
   import com.tencent.morefun.framework.base.Command;
   
   public interface ICommandManager
   {
       
      function registerExecuter(param1:IExecuter) : IExecuter;
      
      function hasExecuter(param1:String) : Boolean;
      
      function retrieveExecuter(param1:String) : IExecuter;
      
      function removeExecuter(param1:String) : IExecuter;
      
      function removeAllExecuter(param1:String) : void;
      
      function callCommand(param1:Command) : void;
      
      function doCommand(param1:Command) : void;
   }
}
