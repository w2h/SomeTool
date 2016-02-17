package serverProto.guild
{
   public final class ProtoGvGBattleStatus
   {
      
      public static const GVG_STATUS_NONE:int = 0;
      
      public static const GVG_STATUS_SIGN_UP:int = 1;
      
      public static const GVG_STATUS_BATTLE_PREPARE:int = 2;
      
      public static const GVG_STATUS_BATTLE_START:int = 3;
      
      public static const GVG_STATUS_BATTLE_FINISH:int = 4;
      
      public static const GVG_STATUS_ALL_OVER:int = 5;
       
      public function ProtoGvGBattleStatus()
      {
         super();
      }
   }
}
