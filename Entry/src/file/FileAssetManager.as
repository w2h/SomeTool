package file
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.file.FileAssetInfo;
   
   public class FileAssetManager
   {
      
      private static var _map:Dictionary;
      
      private static var _archiveMap:Dictionary;
      
      private static var _resPathConfig:String;
      
      private static var _resPathAssets:String;
      
      private static var _resPathFlash:String;
      
      private static const PATH_CONFIG:String = "config/";
      
      private static const PATH_ASSETS:String = "assets/";
      
      private static const PATH_FLASH:String = "flash/";
       
      public function FileAssetManager()
      {
         super();
      }
      
      public static function set resPathConfig(param1:String) : void
      {
         _resPathConfig = param1;
      }
      
      public static function getArchiveUrl(param1:String) : String
      {
         return _archiveMap[param1];
      }
      
      public static function getQualifiedUrl(param1:String) : String
      {
         var _loc2_:FileAssetInfo = _map[param1];
         if(!param1)
         {
            return null;
         }
         if(_loc2_ && _loc2_.tag)
         {
            var param1:String = _loc2_.tag + "/" + param1;
         }
         else if(resPathConfig && param1.indexOf(PATH_CONFIG) == 0)
         {
            param1 = resPathConfig + "/" + param1;
         }
         else if(resPathAssets && param1.indexOf(PATH_ASSETS) == 0)
         {
            param1 = resPathAssets + "/" + param1;
         }
         else if(resPathFlash && param1.indexOf(PATH_FLASH) == 0)
         {
            param1 = resPathFlash + "/" + param1;
         }
         return param1;
      }
      
      public static function getVideoQualifiedUrl(param1:String) : String
      {
         var _loc2_:FileAssetInfo = _map[param1];
         if(_loc2_ && _loc2_.tag)
         {
            var param1:String = resPathAssets + "/" + _loc2_.tag + "/" + param1;
         }
         else if(resPathConfig && param1.indexOf(PATH_CONFIG) == 0)
         {
            param1 = resPathConfig + "/" + param1;
         }
         else if(resPathAssets && param1.indexOf(PATH_ASSETS) == 0)
         {
            param1 = resPathAssets + "/" + param1;
         }
         return param1;
      }
      
      public static function getFileSize(param1:String) : int
      {
         var _loc2_:FileAssetInfo = _map[param1] as FileAssetInfo;
         return _loc2_?_loc2_.size:-1;
      }
      
      public static function get resPathAssets() : String
      {
         return _resPathAssets;
      }
      
      public static function set resPathAssets(param1:String) : void
      {
         _resPathAssets = param1;
      }
      
      public static function get resPathConfig() : String
      {
         return _resPathConfig;
      }
      
      public static function set resPathFlash(param1:String) : void
      {
         _resPathFlash = param1;
      }
      
      public static function get resPathFlash() : String
      {
         return _resPathFlash;
      }
      
      public function importConfig(param1:Dictionary, param2:XML) : void
      {
         var _loc3_:XML = null;
         _map = param1 || new Dictionary(false);
         _archiveMap = new Dictionary(false);
         if(param2)
         {
            for each(_loc3_ in param2..item)
            {
               _archiveMap[String(_loc3_.@url)] = String(_loc3_.parent().@url);
            }
         }
      }
   }
}
