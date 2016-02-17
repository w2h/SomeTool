package com.tencent.morefun.naruto.sound.interfaces
{
   import com.tencent.morefun.naruto.sound.data.BgMusicInfo;
   
   public interface IBgMusicManager
   {
       
      function setDefaultMusicPool(param1:Vector.<BgMusicInfo>, param2:uint) : void;
      
      function playBgMusic(param1:BgMusicInfo, param2:uint) : IMusicPlayer;
      
      function changeVolume(param1:uint, param2:Boolean = true, param3:uint = 1000) : void;
      
      function restoreVolume(param1:Boolean = true, param2:uint = 1000) : void;
      
      function stop() : void;
      
      function resume() : void;
      
      function playEnvAudio(param1:String) : void;
   }
}
