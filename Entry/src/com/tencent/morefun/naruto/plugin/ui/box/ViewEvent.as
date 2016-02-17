package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.events.Event;
   
   public class ViewEvent extends Event
   {
      
      public static const BOX_SHOW:String = "box#show";
      
      public static const BOX_HIDE:String = "box#hide";
      
      public static const BOX_DESTROY:String = "box#destroy";
       
      private var _data:Object;
      
      public function ViewEvent(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         this._data = param2;
         super(param1,param3,param4);
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      override public function clone() : Event
      {
         return new ViewEvent(type,this.data);
      }
   }
}
