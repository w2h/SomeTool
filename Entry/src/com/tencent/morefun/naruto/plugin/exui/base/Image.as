package com.tencent.morefun.naruto.plugin.exui.base
{
   import flash.display.Sprite;
   import com.tencent.morefun.framework.net.LoadManager;
   import com.tencent.morefun.framework.net.def.LoaderDef;
   import flash.display.DisplayObject;
   import ui.naruto.LoadingUI;
   import flash.external.ExternalInterface;
   import flash.display.Loader;
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   import flash.events.Event;
   
   [Event(name="complete",type="flash.events.Event")]
   public class Image extends Sprite
   {
      
      public static const _loader:LoadManager = LoadManager.getManager(LoaderDef.IMAGE);
       
      protected var _content:DisplayObject;
      
      protected var _url:String;
      
      protected var _width:int;
      
      protected var _height:int;
      
      protected var _resizeToFit:Boolean;
      
      protected var _centerAlign:Boolean;
      
      protected var _enableLoadingMovie:Boolean;
      
      protected var _indicator:LoadingUI;
      
      protected var _indicatorX:int;
      
      protected var _indicatorY:int;
      
      protected var _loading:Boolean;
      
      protected var _autoTrim:Boolean;
      
      protected var _smoothing:Boolean;
      
      public function Image(param1:int = 0, param2:int = 0, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false)
      {
         super();
         this._resizeToFit = param3;
         this._centerAlign = param4;
         this._smoothing = true;
         this._width = param1;
         this._height = param2;
         this._enableLoadingMovie = param5;
      }
      
      public function setImageRect(param1:int, param2:uint) : void
      {
         this._width = param1;
         this._height = param2;
      }
      
      public function moveLoadingMovie(param1:Number, param2:Number) : void
      {
         this._indicatorX = param1;
         this._indicatorY = param2;
      }
      
      public function load(param1:String) : void
      {
         if(ExternalInterface.available)
         {
            var param1:String = encodeURI(param1);
         }
         if(this._url == param1 || !param1)
         {
            return;
         }
         this._content && this.dispose(false);
         this._url = param1;
         if(this._enableLoadingMovie)
         {
            if(this._indicator == null)
            {
               this._indicator = new LoadingUI();
               this._indicator.x = this._indicatorX;
               this._indicator.y = this._indicatorY;
            }
            this._indicator.gotoAndPlay(2);
            !this._indicator.parent && addChild(this._indicator);
         }
         this._loading = true;
         _loader.loadTask(this._url,this.processImage,null);
      }
      
      protected function processImage(param1:Loader, param2:String) : void
      {
         var bounds:Rectangle = null;
         var image:Loader = param1;
         var url:String = param2;
         if(url != this._url)
         {
            return;
         }
         this._loading = false;
         if(!image)
         {
            if(this._indicator)
            {
               this._indicator.parent && this._indicator.parent.removeChild(this._indicator);
               this._indicator.gotoAndStop(1);
               this._indicator = null;
            }
            dispatchEvent(new Event("LoadError"));
            return;
         }
         var bitmap:Bitmap = new Bitmap();
         bitmap.bitmapData = (image.contentLoaderInfo.content as Bitmap).bitmapData;
         bitmap.smoothing = this._smoothing;
         if(this._autoTrim)
         {
            try
            {
               bounds = bitmap.bitmapData.getColorBoundsRect(4.27819008E9,0,false);
            }
            catch(e:Error)
            {
               bounds = null;
            }
         }
         if(!bounds || !bounds.width || !bounds.height)
         {
            bounds = bitmap.getBounds(bitmap);
         }
         bitmap.scrollRect = bounds;
         addChild(this._content = bitmap);
         if(this._resizeToFit && this._width && this._height)
         {
            this._content.scaleX = this._content.scaleY = Math.min(this._width / bounds.width,this._height / bounds.height);
         }
         if(this._indicator)
         {
            this._indicator.parent && this._indicator.parent.removeChild(this._indicator);
            this._indicator.gotoAndStop(1);
            this._indicator = null;
         }
         this.centerAlign = this._centerAlign;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function dispose(param1:Boolean = false) : void
      {
         if(this._url)
         {
            _loader.killCompleteCallback(this._url,this.processImage);
            _loader.releaseAsset(this._url);
            this._url = null;
         }
         if(this._content)
         {
            if(this._content is Bitmap)
            {
               (this._content as Bitmap).bitmapData = null;
            }
            this._content.parent && this._content.parent.removeChild(this._content);
            this._content = null;
         }
      }
      
      public function get centerAlign() : Boolean
      {
         return this._centerAlign;
      }
      
      public function set centerAlign(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         this._centerAlign = param1;
         if(this._content && this._centerAlign)
         {
            _loc2_ = this._content.getBounds(this._content);
            _loc2_.height = this._content.scrollRect.height;
            _loc2_.width = this._content.scrollRect.width;
            this._content.x = (this._width - _loc2_.width * this._content.scaleX) / 2 - _loc2_.x * this._content.scaleX >> 0;
            this._content.y = (this._height - _loc2_.height * this._content.scaleY) / 2 - _loc2_.y * this._content.scaleY >> 0;
         }
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function get enableLoadingMovie() : Boolean
      {
         return this._enableLoadingMovie;
      }
      
      public function set enableLoadingMovie(param1:Boolean) : void
      {
         this._enableLoadingMovie = param1;
      }
      
      public function get content() : DisplayObject
      {
         return this._content;
      }
      
      public function get autoTrim() : Boolean
      {
         return this._autoTrim;
      }
      
      public function set autoTrim(param1:Boolean) : void
      {
         this._autoTrim = param1;
      }
      
      public function get smoothing() : Boolean
      {
         return this._smoothing;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         this._smoothing = param1;
         if(this._content && this._content is Bitmap)
         {
            (this._content as Bitmap).smoothing = this._smoothing;
         }
      }
   }
}
