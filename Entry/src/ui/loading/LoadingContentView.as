package ui.loading
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class LoadingContentView extends Sprite
   {
       
      public var anchorAnimation:MovieClip;
      
      public var anchor:MovieClip;
      
      public var errorTips:TextField;
      
      public var percent:TextField;
      
      public var tips:TextField;
      
      public var barMask:MovieClip;
      
      public function LoadingContentView()
      {
         super();
      }
   }
}
