package com.greensock.plugins
{
   import flash.display.DisplayObject;
   import com.greensock.TweenLite;
   
   public class CacheAsBitmapPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
       
      protected var _target:DisplayObject;
      
      protected var _tween:TweenLite;
      
      protected var _cacheAsBitmap:Boolean;
      
      protected var _initVal:Boolean;
      
      public function CacheAsBitmapPlugin()
      {
         super();
         this.propName = "cacheAsBitmap";
         this.overwriteProps = ["cacheAsBitmap"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         this._target = param1 as DisplayObject;
         this._tween = param3;
         this._initVal = this._target.cacheAsBitmap;
         this._cacheAsBitmap = Boolean(param2);
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         if(this._tween.cachedDuration == this._tween.cachedTime || this._tween.cachedTime == 0)
         {
            this._target.cacheAsBitmap = this._initVal;
         }
         else if(this._target.cacheAsBitmap != this._cacheAsBitmap)
         {
            this._target.cacheAsBitmap = this._cacheAsBitmap;
         }
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._target = null;
         this._tween = null;
      }
   }
}
