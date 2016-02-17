package crew.def
{
   public class NinjaPropsListTypeDef
   {
      
      public static const BAG:uint = 1 << 1;
      
      public static const USING:uint = 1 << 2;
      
      public static const ALL:uint = BAG | USING;
       
      public function NinjaPropsListTypeDef()
      {
         super();
      }
   }
}
