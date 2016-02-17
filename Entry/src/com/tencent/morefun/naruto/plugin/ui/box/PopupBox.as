package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.display.DisplayObjectContainer;
   
   public class PopupBox extends BaseBox implements IPopup
   {
       
      public function PopupBox(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean, param4:Boolean = true, param5:int = 5, param6:String = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get popupType() : int
      {
         return 0;
      }
   }
}
