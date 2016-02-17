package com.tencent.morefun.naruto.plugin.ui.tooltip
{
   import flash.display.MovieClip;
   
   public dynamic class TagIcon extends MovieClip
   {
       
      public function TagIcon()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
