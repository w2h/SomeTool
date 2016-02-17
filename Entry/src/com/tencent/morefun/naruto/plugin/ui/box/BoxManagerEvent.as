package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.events.Event;
   
   public class BoxManagerEvent extends Event
   {
      
      public static const BOX_SHOW:String = "boxShow";
      
      public static const BOX_SHOWED:String = "boxShowed";
      
      public static const BOX_HIDE:String = "boxHide";
      
      public static const BOX_HIDED:String = "boxHided";
       
      public var box:com.tencent.morefun.naruto.plugin.ui.box.IBox;
      
      public function BoxManagerEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
