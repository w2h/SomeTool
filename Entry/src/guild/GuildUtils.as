package guild
{
   import base.ApplicationData;
   
   public class GuildUtils
   {
       
      public function GuildUtils()
      {
         super();
      }
      
      public static function getGuildIdentityName(param1:int) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function hasGuild() : Boolean
      {
         var _loc1_:String = ApplicationData.singleton.selfInfo.guild.guildId.toString();
         return _loc1_ && _loc1_ != "0";
      }
   }
}
