package com.tencent.morefun.naruto.util
{
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginManager;
   
   public class ConfUtils
   {
       
      public function ConfUtils()
      {
         super();
         throw new Error(ConfUtils + " can not be instantiated.");
      }
      
      public static function getConfXml(param1:String, param2:String) : XML
      {
         var _loc3_:IPluginManager = Facade.getInstance().retrievePlugin("com.tencent.apf.plugin.pluginmanager.interfaces.IPluginManager") as IPluginManager;
         var _loc4_:XML = _loc3_.getPluginResource(param1)[param2] as XML;
         return _loc4_.copy();
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
