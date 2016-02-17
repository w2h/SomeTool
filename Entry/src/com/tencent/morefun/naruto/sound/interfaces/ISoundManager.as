package com.tencent.morefun.naruto.sound.interfaces
{
   import flash.events.IEventDispatcher;
   
   public interface ISoundManager extends IEventDispatcher
   {
       
      function play(param1:uint, param2:uint = 100) : ISoundPlayer;
      
      function playUISound(param1:uint) : ISoundPlayer;
      
      function playDeathSound(param1:uint) : ISoundPlayer;
      
      function get bgMusicMgr() : IBgMusicManager;
      
      function get battleMusicMgr() : IBgMusicManager;
   }
}
