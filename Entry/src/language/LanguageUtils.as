package language
{
   public class LanguageUtils
   {
      
      public static var m_lang:String = "zh";
       
      public function LanguageUtils()
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
