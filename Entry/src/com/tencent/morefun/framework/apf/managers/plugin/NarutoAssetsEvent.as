package com.tencent.morefun.framework.apf.managers.plugin
{
   import flash.events.Event;
   
   public class NarutoAssetsEvent extends Event
   {
      
      public static const ASSET_COMPLETE:String = "naruto.assetComplete";
      
      public static const ASSET_ERROR:String = "naruto.assetError";
      
      public static const PLUGIN_COMPLETE:String = "naruto.pluginComplete";
      
      public static const COMMAND_COMPLETE:String = "naruto.commandComplete";
      
      public static const ALL_COMPLETE:String = "naruto.allComplete";
      
      public static const PROGRESS:String = "naruto.progress";
      
      public static const PLUGIN_CREATE_ERROR:String = "naruto.pluginCreateError";
      
      public static const PLUGIN_CREATE_COMPLETE:String = "naruto.pluginCreateComplete";
       
      public var data;
      
      public var url:String;
      
      public var relatedFlag:int;
      
      public function NarutoAssetsEvent(param1:String, param2:* = null, param3:String = null, param4:int = 0)
      {
         this.data = param2;
         this.url = param3;
         this.relatedFlag = param4;
         super(param1,false,false);
      }
      
      override public function clone() : Event
      {
         return new NarutoAssetsEvent(type,this.data,this.url,this.relatedFlag);
      }
      
      override public function toString() : String
      {
         return formatToString("PluginAssetEvent","type","data","url");
      }
   }
}
