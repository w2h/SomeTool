package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.display.DisplayObjectContainer;
   
   public class NarutoPopup extends BaseBox
   {
       
      public function NarutoPopup(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean, param4:Boolean = true, param5:int = 5, param6:String = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function exclude(param1:IPopup) : Boolean
      {
         return false;
      }
      
      public function get instanceNeedToQueue() : Boolean
      {
         return true;
      }
   }
}
