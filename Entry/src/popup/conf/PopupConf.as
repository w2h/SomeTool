package popup.conf
{
   import flash.utils.ByteArray;
   import popup.data.PopupConfData;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import cfgData.CFGDataLibs;
   import flash.utils.Dictionary;
   import cfgData.dataStruct.PopupConfCFG;
   import cfgData.CFGDataEnum;
   
   public class PopupConf
   {
      
      private static const CONF_LINK:String = "plugin.popup.conf";
      
      private static const CONF_KEY:String = CFGDataEnum.ENUM_PopupConfCFG;
      
      private static var _confData:ByteArray;
      
      private static var _list:Vector.<PopupConfData>;
       
      public function PopupConf()
      {
         super();
         throw new Error(PopupConf + " can not be instantiated.");
      }
      
      public static function initialize(param1:Plugin) : void
      {
         _confData = param1.getResource(param1.getPluginName())[CONF_LINK] as ByteArray;
         parse(CFGDataLibs.parseData(_confData,CONF_KEY));
      }
      
      public static function destroy() : void
      {
         _confData = null;
         _list = null;
      }
      
      public static function getConfList() : Vector.<PopupConfData>
      {
         return _list;
      }
      
      public static function getConfByIndex(param1:int) : PopupConfData
      {
         if(param1 >= 0 && param1 < _list.length)
         {
            return _list[param1];
         }
         return null;
      }
      
      private static function parse(param1:Dictionary) : void
      {
         var _loc2_:PopupConfData = null;
         var _loc3_:PopupConfCFG = null;
         _list = new Vector.<PopupConfData>();
         for each(_loc3_ in param1)
         {
            _loc2_ = parseItem(_loc3_);
            _list.push(_loc2_);
         }
      }
      
      private static function parseItem(param1:PopupConfCFG) : PopupConfData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:PopupConfData = new PopupConfData();
         _loc2_.id = param1.id;
         _loc2_.name = param1.name;
         _loc2_.type = param1.type;
         _loc2_.priority = param1.pry;
         _loc2_.hideWhenExclusive = param1.hideWhenExclusive == 1;
         return _loc2_;
      }
   }
}
