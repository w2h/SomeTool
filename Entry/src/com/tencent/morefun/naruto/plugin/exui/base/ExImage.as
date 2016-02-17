package com.tencent.morefun.naruto.plugin.exui.base
{
   import flash.display.DisplayObject;
   import flash.display.Loader;
   
   public class ExImage extends Image
   {
       
      private var _defaultIcon:DisplayObject;
      
      public function ExImage(param1:int = 0, param2:int = 0, param3:Boolean = false, param4:DisplayObject = null)
      {
         super(param1,param2,param3);
         this._defaultIcon = param4;
         if(this._defaultIcon && this.numChildren == 0)
         {
            addChild(this._defaultIcon);
         }
      }
      
      override protected function processImage(param1:Loader, param2:String) : void
      {
         super.processImage(param1,param2);
         if(this._defaultIcon && this._defaultIcon.parent)
         {
            if(_content)
            {
               this._defaultIcon.parent.removeChild(this._defaultIcon);
            }
         }
      }
      
      override public function load(param1:String) : void
      {
         if(this._defaultIcon && this.numChildren == 0)
         {
            addChild(this._defaultIcon);
         }
         super.load(param1);
      }
   }
}
