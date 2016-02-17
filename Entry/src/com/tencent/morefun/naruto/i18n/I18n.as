package com.tencent.morefun.naruto.i18n
{
   public class I18n
   {
      
      public static var m_lang:String = "zh";
       
      public function I18n()
      {
         super();
      }
      
      public static function set Language(param1:String) : void
      {
         m_lang = param1;
      }
      
      public static function lang(param1:String) : String
      {
         return param1;
      }
   }
}
