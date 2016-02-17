package com.tencent.morefun.naruto.sound.data
{
   public class MusicInfo
   {
       
      public var interval:uint;
      
      public var durationFadeIn:uint;
      
      public var durationFadeOut:uint;
      
      public var loop:Boolean;
      
      public var gapBegining:uint;
      
      public var gapEnding:uint;
      
      public var gapAllowedWithFirstLoop:Boolean;
      
      public function MusicInfo()
      {
         super();
         this.loop = true;
         this.gapAllowedWithFirstLoop = true;
         this.durationFadeIn = 5000;
         this.durationFadeOut = 3000;
      }
   }
}
