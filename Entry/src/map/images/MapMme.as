package map.images
{
   import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
   import map.data.MapMgImgInfo;
   import flash.display.DisplayObjectContainer;
   import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
   import npc.defs.NpcAssetDef;
   
   public class MapMme extends MmeAssetRender
   {
       
      private var _cfg:MapMgImgInfo;
      
      private var _url:String;
      
      private var _isInViewpoint:Boolean;
      
      private var _parent:DisplayObjectContainer;
      
      private var _loadStarted:Boolean;
      
      private var _currActionName:String;
      
      private var _isPlaying:Boolean;
      
      private var _isActive:Boolean = true;
      
      public function MapMme(param1:MapMgImgInfo, param2:DisplayObjectContainer)
      {
         super(NpcAssetDef.MME_ASSET);
         this._cfg = param1;
         this._url = this._cfg.url;
         this._parent = param2;
         alpha = param1.alpha;
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         this._isActive = param1;
         this.checkPlay();
      }
      
      public function get cfg() : MapMgImgInfo
      {
         return this._cfg;
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function inViewpoint() : void
      {
         if(this._isInViewpoint)
         {
            return;
         }
         this._isInViewpoint = true;
         if(!parent)
         {
            this._parent.addChild(this);
         }
         this.checkPlay();
         if(!this._loadStarted)
         {
            this._loadStarted = true;
            addEventListener(MmeAssetRenderEvent.READY,this.onReady);
            loadUrl(this.cfg.url);
         }
      }
      
      protected function onReady(param1:MmeAssetRenderEvent) : void
      {
         removeEventListener(MmeAssetRenderEvent.READY,this.onReady);
         var _loc2_:Array = getActionNames();
         if(_loc2_.length > 0)
         {
            this._currActionName = _loc2_[0];
            this.checkPlay();
         }
      }
      
      protected function checkPlay() : void
      {
         if(this._currActionName == null)
         {
            return;
         }
         if(this._isInViewpoint && this.isActive)
         {
            if(getCurrFrame() == -1)
            {
               play(this._currActionName,this.cfg.startFrame,true);
            }
            else
            {
               play(this._currActionName,getCurrFrame(),true);
            }
         }
         else
         {
            stop();
         }
      }
      
      public function outViewpoint() : void
      {
         if(this._isInViewpoint == false)
         {
            return;
         }
         this._isInViewpoint = false;
         if(parent)
         {
            parent.removeChild(this);
         }
         this.checkPlay();
      }
      
      override public function destroy() : void
      {
         this.outViewpoint();
         removeEventListener(MmeAssetRenderEvent.READY,this.onReady);
         this._cfg = null;
         this._parent = null;
         super.destroy();
      }
   }
}
