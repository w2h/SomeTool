package com.tencent.morefun.naruto.plugin.exui.loading.flash
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ProgressLoadingUI extends MovieClip
   {
       
      public var indicator:MovieClip;
      
      public var anchorAnimation:MovieClip;
      
      public var anchor:MovieClip;
      
      public var loadingMask:MovieClip;
      
      public var loadingLine:MovieClip;
      
      public var percentMC:MovieClip;
      
      public var assetTips:TextField;
      
      public var errorTips:TextField;
      
      public var helpTips:TextField;
      
      public var detailInfo:TextField;
      
      public var countdown:TextField;
      
      public function ProgressLoadingUI()
      {
         super();
      }
   }
}
