package com.tencent.morefun.naruto.plugin.exui.event
{
   import flash.events.Event;
   
   public class PopupListItemClickedEvent extends Event
   {
      
      public static const ITEM_CLICKED:String = "itemClicked";
       
      public var label:String;
      
      public function PopupListItemClickedEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
