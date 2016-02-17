package majorRole.def
{
   public class TalentSkillTypeDef
   {
      
      public static const NONE:int = -1;
      
      public static const DEFAULT:int = 1;
      
      public static const RANK_BATTLE:int = 8;
      
      public static const WARWORSHIP:int = 11;
      
      public static const ARENA:int = 5;
      
      public static const EXPEDITION:int = 7;
       
      public function TalentSkillTypeDef()
      {
         super();
      }
      
      public static function typeToIndex(param1:int, param2:int) : int
      {
         if(param1 == DEFAULT)
         {
            return param2;
         }
         if(param1 == RANK_BATTLE)
         {
            return 3;
         }
         if(param1 == WARWORSHIP)
         {
            return 4;
         }
         if(param1 == ARENA)
         {
            return 5;
         }
         if(param1 == EXPEDITION)
         {
            return 6;
         }
         return param1;
      }
      
      public static function indexToType(param1:int) : int
      {
         if(param1 <= 2)
         {
            return DEFAULT;
         }
         if(param1 == 3)
         {
            return RANK_BATTLE;
         }
         if(param1 == 4)
         {
            return WARWORSHIP;
         }
         if(param1 == 5)
         {
            return ARENA;
         }
         if(param1 == 6)
         {
            return EXPEDITION;
         }
         return param1;
      }
      
      public static function getName(param1:int) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
