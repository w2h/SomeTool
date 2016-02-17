package map.images
{
   import flash.display.Bitmap;
   import com.tencent.morefun.framework.net.LoadManager;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import com.tencent.morefun.framework.net.def.LoaderDef;
   import map.data.MapBgImgInfo;
   import map.data.MapFgImgInfo;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import com.tencent.morefun.framework.net.pub;
   import com.tencent.morefun.framework.log.logger;
   import flash.display.Loader;
   import com.greensock.TweenLite;
   import com.tencent.morefun.naruto.util.MathUtil;
   
   public class MapTile extends Bitmap
   {
      
      private static const _loader:LoadManager = LoadManager.getManager(LoaderDef.MAP);
      
      private static const tempPoint:Point = new Point();
      
      private static const tempRectange:Rectangle = new Rectangle();
       
      private var _cfg:MapBgImgInfo;
      
      private var _frontInfo:MapFgImgInfo;
      
      private var _parent:DisplayObjectContainer;
      
      private var frontMask:Bitmap;
      
      private var frontLayer:Sprite;
      
      private var alphaBitmapData:BitmapData;
      
      private var thumbBitmap:Bitmap;
      
      protected var isDestroyed:Boolean;
      
      protected var hasStart:Boolean;
      
      public function MapTile()
      {
         super();
      }
      
      public function initialize(param1:MapBgImgInfo, param2:MapFgImgInfo, param3:DisplayObjectContainer, param4:Sprite = null, param5:BitmapData = null, param6:Bitmap = null) : void
      {
         this.isDestroyed = false;
         this._cfg = param1;
         this._frontInfo = param2;
         this._parent = param3;
         this.frontLayer = param4;
         this.alphaBitmapData = param5;
         if(this.alphaBitmapData)
         {
         }
         this.thumbBitmap = param6;
         if(_loader.pub::log == null)
         {
            _loader.pub::log = logger.output;
         }
      }
      
      public function get cfg() : MapBgImgInfo
      {
         return this._cfg;
      }
      
      public function get url() : String
      {
         return this._cfg.url;
      }
      
      public function inViewpoint() : void
      {
         if(this.thumbBitmap && !this.thumbBitmap.parent)
         {
            this._parent.addChild(this.thumbBitmap);
         }
         this._parent.addChild(this);
         if(this.frontMask && !this.frontMask.parent)
         {
            this.frontLayer.addChild(this.frontMask);
         }
         if(!this.hasStart)
         {
            this.hasStart = true;
            _loader.loadLazyTask(this._cfg.url,this.processImageRender);
         }
      }
      
      private function processImageRender(param1:Loader, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:BitmapData = null;
         if(param2 != this._cfg.url)
         {
            return;
         }
         if(!param1)
         {
            return;
         }
         if(param1.contentLoaderInfo.content is Bitmap)
         {
            _loc4_ = (param1.contentLoaderInfo.content as Bitmap).bitmapData;
         }
         if(_loc4_ == null)
         {
            return;
         }
         this.bitmapData = _loc4_;
         if(param3)
         {
            this.alpha = 0;
            TweenLite.killTweensOf(this);
            TweenLite.to(this,0.2,{
               "alpha":1,
               "onComplete":this.destroyThumb
            });
         }
         if(this._frontInfo)
         {
            this.frontMask = new Bitmap();
         }
         if(this.frontMask)
         {
            MapTile.tempPoint.setTo(x + this._frontInfo.offsetX,y + this._frontInfo.offsetY);
            MapTile.tempRectange.setTo(this._frontInfo.offsetX,this._frontInfo.offsetY,this._frontInfo.width,this._frontInfo.height);
            this.frontMask.x = x + this._frontInfo.offsetX;
            this.frontMask.y = y + this._frontInfo.offsetY;
            _loc5_ = new BitmapData(this._frontInfo.width,this._frontInfo.height,true,0);
            _loc5_.copyPixels(_loc4_,MapTile.tempRectange,MathUtil.ZERO_POINT,this.alphaBitmapData,MapTile.tempPoint);
            this.frontMask.bitmapData = _loc5_;
            if(this.parent && !this.frontMask.parent)
            {
               this.frontLayer.addChild(this.frontMask);
            }
         }
      }
      
      private function destroyThumb() : void
      {
         if(this.thumbBitmap)
         {
            if(this.thumbBitmap.parent)
            {
               this.thumbBitmap.parent.removeChild(this.thumbBitmap);
            }
            if(this.thumbBitmap.bitmapData)
            {
               this.thumbBitmap.bitmapData.dispose();
               this.thumbBitmap.bitmapData = null;
            }
            this.thumbBitmap = null;
         }
      }
      
      public function outViewpoint() : void
      {
         if(this.thumbBitmap && this.thumbBitmap.parent)
         {
            this.thumbBitmap.parent.removeChild(this.thumbBitmap);
         }
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
         if(this.frontMask && this.frontMask.parent)
         {
            this.frontMask.parent.removeChild(this.frontMask);
         }
      }
      
      public function destroy() : void
      {
         if(this.isDestroyed)
         {
            return;
         }
         this.outViewpoint();
         _loader.killCompleteCallback(this._cfg.url,this.processImageRender);
         _loader.releaseAsset(this._cfg.url);
         this.hasStart = false;
         this.destroyThumb();
         if(this.frontMask)
         {
            if(this.frontMask.parent)
            {
               this.frontMask.parent.removeChild(this.frontMask);
            }
            if(this.frontMask.bitmapData)
            {
               this.frontMask.bitmapData.dispose();
               this.frontMask.bitmapData = null;
            }
            this.frontMask = null;
         }
         this.alphaBitmapData = null;
         this.isDestroyed = true;
         this.frontLayer = null;
         this._cfg = null;
         this._frontInfo = null;
         this._parent = null;
         this.bitmapData = null;
      }
   }
}
