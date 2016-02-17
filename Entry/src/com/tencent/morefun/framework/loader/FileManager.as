package com.tencent.morefun.framework.loader
{
   import flash.system.ApplicationDomain;
   import flash.utils.getDefinitionByName;
   
   public class FileManager
   {
      
      private static const _manager:Object = getFileAssetMgr();
       
      public function FileManager()
      {
         super();
      }
      
      private static function getFileAssetMgr() : Object
      {
         if(ApplicationDomain.currentDomain.hasDefinition("file.FileAssetManager"))
         {
            return getDefinitionByName("file.FileAssetManager");
         }
         return null;
      }
      
      private static function validate(param1:String) : String
      {
         return param1?param1.replace(new RegExp("\\\\","g"),"/"):null;
      }
      
      public static function getQualifiedUrl(param1:String) : String
      {
         if(_manager && _manager["getQualifiedUrl"] is Function)
         {
            return (_manager["getQualifiedUrl"] as Function).call(null,validate(param1));
         }
         return param1;
      }
      
      public static function getVideoQualifiedUrl(param1:String) : String
      {
         if(_manager && _manager["getVideoQualifiedUrl"] is Function)
         {
            return (_manager["getVideoQualifiedUrl"] as Function).call(null,validate(param1));
         }
         return param1;
      }
      
      public static function getFileSize(param1:String) : uint
      {
         return _manager?(_manager["getFileSize"] as Function).call(null,validate(param1)):0;
      }
      
      public static function getArchiveUrl(param1:String) : String
      {
         return _manager?(_manager["getArchiveUrl"] as Function).call(null,validate(param1)):null;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
