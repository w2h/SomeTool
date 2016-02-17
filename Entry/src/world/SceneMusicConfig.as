package world
{
   import com.tencent.morefun.naruto.sound.data.BgMusicConfig;
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.sound.data.BgMusicInfo;
   
   public class SceneMusicConfig
   {
      
      public static var musicConfig:BgMusicConfig;
      
      private static var dict:Dictionary;
       
      public function SceneMusicConfig()
      {
         super();
      }
      
      public static function init(param1:XML) : void
      {
         musicConfig = new BgMusicConfig();
         musicConfig.importConfig(param1);
      }
      
      public static function getDefaultMusicPool(param1:int) : Vector.<BgMusicInfo>
      {
         return musicConfig.getDefaultMusicPool(param1);
      }
      
      public static function getMusicInfo(param1:uint) : BgMusicInfo
      {
         return musicConfig.getMusicInfo(param1);
      }
   }
}
