package def
{
   public class NinjaPropsAssetDef
   {
       
      public function NinjaPropsAssetDef()
      {
         super();
      }
      
      public static function getNinjaPropsUrl(param1:uint) : String
      {
         return "assets/bag/item/" + param1 + ".png";
      }
   }
}
