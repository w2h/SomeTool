package com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces
{
   import com.tencent.morefun.framework.base.Command;
   
   public interface IExecuter
   {
       
      function getPluginName() : String;
      
      function getExecuterName() : String;
      
      function commandFilter(param1:Command) : Boolean;
      
      function doCommand(param1:Command) : void;
      
      function finalize() : void;
   }
}
