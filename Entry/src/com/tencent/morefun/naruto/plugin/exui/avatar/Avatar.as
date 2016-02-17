package com.tencent.morefun.naruto.plugin.exui.avatar
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import com.tencent.morefun.naruto.plugin.exui.base.SWFImage;
   import flash.events.Event;
   import flash.events.ErrorEvent;
   import flash.display.DisplayObjectContainer;
   
   public class Avatar extends Sprite
   {
       
      protected var _width:int;
      
      protected var _height:int;
      
      protected var _container:Sprite;
      
      protected var _img:Image;
      
      protected var _swf:SWFImage;
      
      protected var _url:String;
      
      public var dataObj:Object;
      
      public function Avatar(param1:int = 0, param2:int = 0, param3:Boolean = false)
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         super();
         this._width = param1;
         this._height = param2;
         this._container = new Sprite();
         this._container.mouseChildren = false;
         this.addChild(this._container);
         if(this._width > 0 && this._height > 0)
         {
            _loc4_ = this._width / 2;
            _loc5_ = this._height / 2;
            this._img = new Image(this._width,this._height,true,param3,true);
            this._img.moveLoadingMovie(_loc4_,_loc5_);
            this._swf = new SWFImage(this._width,this._height,true,true,param3,true,_loc4_,_loc5_);
         }
         else
         {
            this._img = new Image(0,0,true,param3,true);
            this._swf = new SWFImage(0,0,false,true,param3,true);
         }
         this._img.addEventListener(Event.COMPLETE,this.onLoaded);
         this._img.addEventListener("LoadError",this.onError);
         this._swf.addEventListener(Event.COMPLETE,this.onLoaded);
         this._swf.addEventListener("LoadError",this.onError);
      }
      
      public function destroy() : void
      {
         this.unloadImage();
         this.unloadSwf();
         this._img.removeEventListener(Event.COMPLETE,this.onLoaded);
         this._img.removeEventListener(ErrorEvent.ERROR,this.onError);
         this._img = null;
         this._swf.removeEventListener(Event.COMPLETE,this.onLoaded);
         this._swf.removeEventListener(ErrorEvent.ERROR,this.onError);
         this._swf = null;
         if(this._container != null && this.contains(this._container))
         {
            this.removeChild(this._container);
         }
         this._container = null;
         this._url = null;
         this.dataObj = null;
      }
      
      public function load(param1:String) : void
      {
         this.loadByType(param1);
      }
      
      public function unload() : void
      {
         this.unloadImage();
         this.unloadSwf();
         this._url = null;
      }
      
      public function get container() : DisplayObjectContainer
      {
         return this._container;
      }
      
      private function loadByType(param1:String) : void
      {
         if(param1 == null || param1 == this._url)
         {
            return;
         }
         this._url = param1;
         var _loc2_:int = param1.lastIndexOf(".");
         var _loc3_:String = _loc2_ != -1?param1.substr(_loc2_ + 1):null;
         if(_loc3_ != null)
         {
            if(_loc3_ == "png" || _loc3_ == "jpg")
            {
               this.loadImage(param1);
               this.unloadSwf();
            }
            else if(_loc3_ == "swf")
            {
               this.unloadImage();
               this.loadSwf(param1);
            }
         }
      }
      
      private function loadImage(param1:String) : void
      {
         if(this._img == null)
         {
            return;
         }
         if(!this._container.contains(this._img))
         {
            this._container.addChild(this._img);
         }
         this._img.load(param1);
      }
      
      private function unloadImage() : void
      {
         if(this._img == null)
         {
            return;
         }
         if(this._container.contains(this._img))
         {
            this._container.removeChild(this._img);
         }
         this._img.dispose();
      }
      
      private function loadSwf(param1:String) : void
      {
         if(this._swf == null)
         {
            return;
         }
         if(!this._container.contains(this._swf))
         {
            this._container.addChild(this._swf);
         }
         this._swf.load(param1,null,false);
      }
      
      private function unloadSwf() : void
      {
         if(this._swf == null)
         {
            return;
         }
         if(this._container.contains(this._swf))
         {
            this._container.removeChild(this._swf);
         }
         this._swf.unload();
      }
      
      protected function onLoaded(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      protected function onError(param1:Event) : void
      {
         dispatchEvent(param1);
      }
   }
}
