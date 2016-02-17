package com.tencent.morefun.framework.apf.plugin.pluginmanager
{
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginInfo;
   
   public class PluginInfo implements IPluginInfo
   {
      
      public static const UNDEFINED:uint = 0;
      
      public static const DEFINE:uint = 1;
      
      public static const LOADING_RES:uint = 4;
      
      public static const LOADING_LOGIC:uint = 5;
      
      public static const REGISTERED:uint = 6;
      
      public static const CREATE_ERROR:uint = 7;
       
      private var _interfaceName:String;
      
      private var _info:XML;
      
      private var _languList:XML;
      
      private var _status:uint = 0;
      
      private var _resObject:Object;
      
      public function PluginInfo(param1:XML)
      {
         this._languList = new XML();
         super();
         this._resObject = {};
         this.status = DEFINE;
         this._info = param1;
         this._interfaceName = param1["interface"].toString();
      }
      
      public function get info() : XML
      {
         return this._info;
      }
      
      public function get config() : XML
      {
         return this.info.config[0];
      }
      
      public function get notifyMessage() : XMLList
      {
         return this.info.notifyMessage.messageInfo;
      }
      
      public function get name() : String
      {
         return this.info.name.toString();
      }
      
      public function get interfaceName() : String
      {
         return this._interfaceName;
      }
      
      public function get entityName() : String
      {
         return this.info.entity.toString();
      }
      
      public function get resource() : XMLList
      {
         return this.info.resource.link;
      }
      
      public function get logic() : XMLList
      {
         return this.info.logic.link;
      }
      
      public function get alertUncatchError() : Boolean
      {
         return this.info.alertUncatchError == "true";
      }
      
      public function get language() : XMLList
      {
         return this.info.language.link;
      }
      
      public function get rely() : Array
      {
         var _loc2_:uint = 0;
         var _loc1_:Array = [];
         _loc2_ = 0;
         while(_loc2_ < this.info.rely.plugin.length())
         {
            _loc1_[_loc2_] = this.info.rely.plugin[_loc2_]["@interface"];
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set relyXml(param1:XML) : void
      {
         this.info.rely = param1;
      }
      
      public function get languList() : XML
      {
         return this._languList;
      }
      
      public function set languList(param1:XML) : void
      {
         this._languList = param1;
      }
      
      public function get status() : uint
      {
         return this._status;
      }
      
      public function set status(param1:uint) : void
      {
         this._status = param1;
      }
      
      public function get resObject() : Object
      {
         return this._resObject;
      }
   }
}
