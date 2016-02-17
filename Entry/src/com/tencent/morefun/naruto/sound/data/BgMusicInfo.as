package com.tencent.morefun.naruto.sound.data
{
   public class BgMusicInfo extends MusicInfo
   {
       
      public var id:uint;
      
      public var envAudio:String;
      
      public var bgMusics:Vector.<String>;
      
      public var description:String;
      
      public function BgMusicInfo()
      {
         super();
      }
      
      public function get url() : String
      {
         return JSON.stringify({
            "env":this.envAudio,
            "bg":this.bgMusics
         });
      }
   }
}
