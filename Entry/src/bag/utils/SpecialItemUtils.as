package bag.utils
{
   public class SpecialItemUtils
   {
      
      public static const MONEY_ID:uint = 11000001;
      
      public static const COUPON_ID:uint = 11100002;
      
      public static const INGOT_ID:uint = 11300003;
      
      public static const STRENGTH_ID:uint = 11200004;
      
      public static const PLAYER_EXP_ID:uint = 11400005;
      
      public static const NINJA_EXP_ID:uint = 11700006;
      
      public static const NINJA_ON_SQUAD_HP_ID:uint = 11800007;
      
      public static const NINJA_OFF_SQUAD_HP_ID:uint = 11800008;
      
      public static const CHAKRA_ID:uint = 11900008;
       
      public function SpecialItemUtils()
      {
         super();
         throw new Error(SpecialItemUtils + " can not be instantiated.");
      }
      
      public static function isMoney(param1:uint) : Boolean
      {
         return param1 == MONEY_ID;
      }
      
      public static function isCoupon(param1:uint) : Boolean
      {
         return param1 == COUPON_ID;
      }
      
      public static function isIngot(param1:uint) : Boolean
      {
         return param1 == INGOT_ID;
      }
      
      public static function isStrength(param1:uint) : Boolean
      {
         return param1 == STRENGTH_ID;
      }
      
      public static function isPlayerExp(param1:uint) : Boolean
      {
         return param1 == PLAYER_EXP_ID;
      }
      
      public static function isNinjaExp(param1:uint) : Boolean
      {
         return param1 == NINJA_EXP_ID;
      }
      
      public static function isNinjaOnSquadHp(param1:uint) : Boolean
      {
         return param1 == NINJA_ON_SQUAD_HP_ID;
      }
      
      public static function isNinjaOffSquadHp(param1:uint) : Boolean
      {
         return param1 == NINJA_OFF_SQUAD_HP_ID;
      }
      
      public static function isChakra(param1:uint) : Boolean
      {
         return param1 == CHAKRA_ID;
      }
   }
}
