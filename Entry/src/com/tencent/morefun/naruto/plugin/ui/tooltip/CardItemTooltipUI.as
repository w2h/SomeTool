package com.tencent.morefun.naruto.plugin.ui.tooltip
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   
   public dynamic class CardItemTooltipUI extends Sprite
   {
       
      public var nameText:TextField;
      
      public var bg:MovieClip;
      
      public var descriptionText:TextField;
      
      public var texture_right:MovieClip;
      
      public var texture_left:MovieClip;
      
      public function CardItemTooltipUI()
      {
         super();
      }
   }
}
