package newestActivity.conf
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import newestActivity.data.NewestActivityConfData;
   
   public class NewestActivityConf
   {
      
      private static const CONF_LINK:String = "plugin.newestActivity.activityConf";
      
      private static var _confData:XML;
      
      private static var _items:Dictionary;
       
      public function NewestActivityConf()
      {
         super();
         throw new Error(NewestActivityConf + " can not be instantiated.");
      }
      
      public static function initialize(param1:Plugin) : void
      {
         _confData = param1.getResource(param1.getPluginName())[CONF_LINK] as XML;
         _items = new Dictionary();
         parse(_confData);
      }
      
      public static function dispose() : void
      {
         _confData = null;
         _items = null;
      }
      
      public static function getConfDataById(param1:uint) : NewestActivityConfData
      {
         return _items[param1];
      }
      
      private static function parse(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc5_:NewestActivityConfData = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:XMLList = param1.Activity;
         var _loc3_:int = _loc2_.length();
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = _loc2_[_loc6_];
            _loc5_ = new NewestActivityConfData();
            _loc5_.id = uint(_loc4_.@id);
            _loc5_.name = _loc4_.@name;
            _loc5_.viewClass = _loc4_.@viewClass;
            _items[_loc5_.id] = _loc5_;
            _loc6_++;
         }
      }
   }
}
