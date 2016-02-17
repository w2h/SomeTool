package utils
{
   import com.tencent.morefun.naruto.util.StrReplacer;
   
   public class MoneyUtil
   {
      
      private static const UNICODE_MONEY_EDGE:int = 100000;
      
      private static const UNICODE_MONEY_DIVISOR:int = 10000;
      
      private static const UNICODE_MONEY_STR:String = "%1万";
       
      public function MoneyUtil()
      {
         super();
      }
      
      public static function getMoneyText(param1:int) : String
      {
         var _loc2_:String = null;
         if(param1 < UNICODE_MONEY_EDGE)
         {
            _loc2_ = param1.toString();
         }
         else
         {
            var param1:int = int(param1 / UNICODE_MONEY_DIVISOR);
            _loc2_ = StrReplacer.replace(UNICODE_MONEY_STR,param1);
         }
         return _loc2_;
      }
   }
}
