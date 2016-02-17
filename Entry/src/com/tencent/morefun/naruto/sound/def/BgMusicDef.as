package com.tencent.morefun.naruto.sound.def
{
   public class BgMusicDef
   {
      
      public static const DEFAULT_SCENE_MAP_MUSIC:String = "assets/sound/scene/SE/adv05.mp3";
      
      public static const DEFAULT_BOSS_MAP_MUSIC:String = "assets/sound/scene/SE/adv06.mp3";
      
      public static const DEFAULT_PVE_BATTLE_MUSIC:Array = ["assets/sound/scene/SE/stage09sun.mp3","assets/sound/scene/SE/stage01.mp3","assets/sound/scene/SE/stage05.mp3"];
      
      public static const DEFAULT_PVP_BATTLE_MUSIC:String = "assets/sound/scene/SE/stage09sun.mp3";
       
      public function BgMusicDef()
      {
         super();
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
