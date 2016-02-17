package com.tencent.morefun.naruto.plugin.exui.render
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.Event;
   
   public dynamic class BaseNinjaTabUI extends MovieClip
   {
       
      public var formationTag:MovieClip;
      
      public var levelText:TextField;
      
      public var starLabel:MovieClip;
      
      public var frame:MovieClip;
      
      public var propertyTag:MovieClip;
      
      public function BaseNinjaTabUI()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,7,this.frame8,21,this.frame22,22,this.frame23,26,this.frame27);
      }
      
      function frame1() : *
      {
         stop();
         this.dispatchEvent(new Event("refreshData"));
      }
      
      function frame2() : *
      {
         stop();
         this.dispatchEvent(new Event("refreshData"));
      }
      
      function frame3() : *
      {
         this.dispatchEvent(new Event("refreshData"));
      }
      
      function frame8() : *
      {
         this.dispatchEvent(new Event("refreshData"));
      }
      
      function frame22() : *
      {
         stop();
      }
      
      function frame23() : *
      {
         this.dispatchEvent(new Event("refreshData"));
      }
      
      function frame27() : *
      {
         this.dispatchEvent(new Event("refreshData"));
      }
   }
}
