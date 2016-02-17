package com.tencent.morefun.naruto.sound.interfaces
{
   import com.tencent.morefun.naruto.sound.data.MusicInfo;
   
   public interface IMusicPlayer
   {
       
      function changeVolume(param1:uint, param2:Boolean = true, param3:uint = 1000) : void;
      
      function restoreVolume(param1:Boolean = true, param2:uint = 1000) : void;
      
      function play(param1:MusicInfo, param2:String = null) : IMusicPlayer;
      
      function setup(param1:MusicInfo, param2:String = null) : void;
      
      function resume() : void;
      
      function stop(param1:Boolean = false) : void;
      
      function get running() : Boolean;
   }
}
