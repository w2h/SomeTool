package com.tencent.morefun.naruto.plugin.ui.tooltip
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class CommonItemTooltipUI extends Sprite
   {
       
      public var icon:MovieClip;
      
      public var useLevel:MovieClip;
      
      public var expireText:TextField;
      
      public var nameText:TextField;
      
      public var bg:MovieClip;
      
      public var descriptionText:TextField;
      
      public var price:MovieClip;
      
      public var texture_right:MovieClip;
      
      public var extraDescriptionText:TextField;
      
      public var texture_left:MovieClip;
      
      public function CommonItemTooltipUI()
      {
         super();
      }
   }
}
