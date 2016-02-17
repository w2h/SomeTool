package com.tencent.morefun.naruto.mmefile.render
{
   import flash.display.Sprite;
   import com.tencent.morefun.framework.net.LoadManager;
   import flash.display.Shape;
   import com.tencent.morefun.framework.net.def.LoaderDef;
   import com.tencent.morefun.framework.net.pub;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.naruto.mmefile.render.datas.MmeData;
   import flash.system.ApplicationDomain;
   import flash.events.Event;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
   
   [Event(name="frameSound",type="com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent")]
   [Event(name="playEnd",type="com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent")]
   [Event(name="frameEvent",type="com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent")]
   [Event(name="loadError",type="com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent")]
   [Event(name="ready",type="com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent")]
   public class MmeAssetRender extends Sprite
   {
      
      private static const loaderManager:LoadManager = LoadManager.getManager(LoaderDef.MME_ASSETS);
      
      private static var shape:Shape = new Shape();
      
      {
         if(MmeAssetRender.loaderManager.pub::log == null)
         {
            MmeAssetRender.loaderManager.pub::log = logger.output;
         }
      }
      
      private var mmeData:MmeData;
      
      private var url:String;
      
      private var appDomain:ApplicationDomain;
      
      private var currFrame:int = -1;
      
      private var totalFrame:int = 0;
      
      private var loop:Boolean = false;
      
      private var frameRate:int = 24;
      
      private var mmeAsset:com.tencent.morefun.naruto.mmefile.render.MmeAsset;
      
      private var manualEnterFramePlayEnd:Boolean = false;
      
      private var innerRenderer:com.tencent.morefun.naruto.mmefile.render.BaseInnerRenderer;
      
      private var enterFrameCount:int;
      
      var referPointVisible:Boolean = false;
      
      public function MmeAssetRender(param1:com.tencent.morefun.naruto.mmefile.render.MmeAsset = null)
      {
         super();
         this.setMmeAsset(param1);
      }
      
      override public function set x(param1:Number) : void
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            AdvancedRenderer(this.innerRenderer).bitmapLayer.x = param1;
         }
         else
         {
            super.x = param1;
         }
      }
      
      override public function get x() : Number
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            return AdvancedRenderer(this.innerRenderer).bitmapLayer.x;
         }
         return super.x;
      }
      
      override public function set y(param1:Number) : void
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            AdvancedRenderer(this.innerRenderer).bitmapLayer.y = param1;
         }
         else
         {
            super.y = param1;
         }
      }
      
      override public function get y() : Number
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            return AdvancedRenderer(this.innerRenderer).bitmapLayer.y;
         }
         return super.y;
      }
      
      override public function set scaleX(param1:Number) : void
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            AdvancedRenderer(this.innerRenderer).bitmapLayer.scaleX = param1;
         }
         else
         {
            super.scaleX = param1;
         }
      }
      
      override public function get scaleX() : Number
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            return AdvancedRenderer(this.innerRenderer).bitmapLayer.scaleX;
         }
         return super.scaleX;
      }
      
      override public function set scaleY(param1:Number) : void
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            AdvancedRenderer(this.innerRenderer).bitmapLayer.scaleY = param1;
         }
         else
         {
            super.scaleY = param1;
         }
      }
      
      override public function get scaleY() : Number
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            return AdvancedRenderer(this.innerRenderer).bitmapLayer.scaleY;
         }
         return super.scaleY;
      }
      
      override public function set rotation(param1:Number) : void
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            AdvancedRenderer(this.innerRenderer).bitmapLayer.rotation = param1;
         }
         else
         {
            super.rotation = param1;
         }
      }
      
      override public function get rotation() : Number
      {
         if(this.innerRenderer is AdvancedRenderer)
         {
            return AdvancedRenderer(this.innerRenderer).bitmapLayer.rotation;
         }
         return super.rotation;
      }
      
      public function get isReady() : Boolean
      {
         return this.innerRenderer != null;
      }
      
      public function gotoAction(param1:String, param2:int = 0, param3:Boolean = false) : Boolean
      {
         if(!this.innerRenderer)
         {
            return false;
         }
         var _loc4_:Boolean = this.innerRenderer.gotoAction(param1,param2);
         if(!_loc4_)
         {
            return false;
         }
         if(param3)
         {
            this.enterFrameCount = 0;
            this.stop();
         }
         this.currFrame = param2;
         this.totalFrame = this.innerRenderer.getCurrTototalFrame();
         if(this.currFrame == this.totalFrame)
         {
            this.manualEnterFramePlayEnd = true;
         }
         else
         {
            this.manualEnterFramePlayEnd = false;
         }
         return true;
      }
      
      public function play(param1:String, param2:int = 0, param3:Boolean = false) : Boolean
      {
         this.loop = param3;
         var _loc4_:Boolean = this.gotoAction(param1,param2);
         if(_loc4_)
         {
            shape.removeEventListener(Event.ENTER_FRAME,this.dispatchPlayEnd);
            this.enterFrameCount = 0;
            shape.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return _loc4_;
      }
      
      public function stop() : void
      {
         shape.removeEventListener(Event.ENTER_FRAME,this.dispatchPlayEnd);
         shape.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function get stageFrameRate() : int
      {
         if(stage != null)
         {
            return stage.frameRate;
         }
         return 24;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         this.enterFrameCount++;
         var _loc2_:int = this.frameRate || this.mmeData.frameRate;
         var _loc3_:int = this.enterFrameCount % (this.stageFrameRate / _loc2_);
         if(_loc3_ != 0)
         {
            return;
         }
         if(this.currFrame == -1)
         {
            return;
         }
         var _loc4_:int = this.currFrame;
         this.calculateUpdate();
         if(this.currFrame == this.totalFrame)
         {
            !this.loop && this.stop();
            if(_loc4_ != this.currFrame || this.totalFrame == 0)
            {
               shape.addEventListener(Event.ENTER_FRAME,this.dispatchPlayEnd);
               if(this.loop)
               {
                  shape.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  shape.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               }
            }
         }
      }
      
      private function dispatchPlayEnd(param1:Event) : void
      {
         if(param1)
         {
            shape.removeEventListener(Event.ENTER_FRAME,this.dispatchPlayEnd);
         }
         if(hasEventListener(MmeAssetRenderEvent.PLAY_END))
         {
            dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.PLAY_END));
         }
      }
      
      public function manualEnterFrame() : void
      {
         var _loc2_:MmeAssetRenderEvent = null;
         if(this.manualEnterFramePlayEnd)
         {
            this.manualEnterFramePlayEnd = false;
            _loc2_ = new MmeAssetRenderEvent(MmeAssetRenderEvent.PLAY_END);
            dispatchEvent(_loc2_);
            if(_loc2_.isStopUpdated)
            {
               return;
            }
         }
         if(this.currFrame == -1)
         {
            return;
         }
         var _loc1_:int = this.currFrame;
         this.calculateUpdate();
         if(this.currFrame == this.totalFrame && (_loc1_ != this.currFrame || this.totalFrame == 0))
         {
            this.manualEnterFramePlayEnd = true;
         }
      }
      
      private function calculateUpdate() : void
      {
         var _loc1_:int = this.currFrame + 1;
         if(_loc1_ > this.totalFrame)
         {
            _loc1_ = this.loop?0:this.totalFrame;
         }
         if(_loc1_ != this.currFrame)
         {
            this.currFrame = _loc1_;
            this.update();
         }
      }
      
      private function update() : void
      {
         if(!this.innerRenderer)
         {
            return;
         }
         this.innerRenderer.setCurrFrame(this.currFrame);
         this.innerRenderer.update();
      }
      
      public function loadMmeData(param1:MmeData, param2:ApplicationDomain) : void
      {
         this.mmeData = param1;
         this.appDomain = param2;
         this.destroyInnerRenderer();
         if(param1.advanced)
         {
            this.innerRenderer = new AdvancedRenderer(this,param1,this.mmeAsset,param2);
            this.x = super.x;
            this.y = super.y;
            super.x = super.y = 0;
         }
         else
         {
            this.innerRenderer = new SimpleInnerRenderer(this,param1,this.mmeAsset,param2);
         }
         dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.READY));
      }
      
      private function loadFla(param1:ApplicationDomain) : void
      {
         this.appDomain = param1;
         this.destroyInnerRenderer();
         this.innerRenderer = new FlaInnerRenderer(this,this.mmeAsset,param1);
         dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.READY));
      }
      
      public function load(param1:ApplicationDomain, param2:String = null) : void
      {
         var _loc3_:MmeData = null;
         if(MmeAsset.hasObject(MmeAsset.KEY_CONFIG,param1) || MmeAsset.hasObject(MmeAsset.KEY_CONFIG_AMF,param1))
         {
            _loc3_ = this.mmeAsset.getMmeData(param1,param2);
            this.loadMmeData(_loc3_,param1);
         }
         else
         {
            this.mmeData = null;
            this.loadFla(param1);
         }
      }
      
      public function loadUrl(param1:String) : void
      {
         var _loc2_:ApplicationDomain = null;
         this.destroyLoader();
         if(param1)
         {
            this.url = param1;
            _loc2_ = this.mmeAsset.getAppDomain(param1);
            if(_loc2_)
            {
               this.load(_loc2_,param1);
            }
            else
            {
               MmeAssetRender.loaderManager.loadTask(param1,this.onLoader,null,new ApplicationDomain());
            }
         }
      }
      
      public function loadUrlAndAutoPlay(param1:String) : void
      {
         if(param1)
         {
            addEventListener(MmeAssetRenderEvent.READY,this.onAutoPlayReady,false,100);
            addEventListener(MmeAssetRenderEvent.LOAD_ERROR,this.onAutoPlayReady,false,100);
            this.loadUrl(param1);
         }
      }
      
      private function onAutoPlayReady(param1:MmeAssetRenderEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function onLoader(param1:Loader, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:LoaderInfo = null;
         if(param1 && param2 == this.url)
         {
            _loc4_ = param1.contentLoaderInfo;
            this.load(_loc4_.applicationDomain,param2);
         }
         else
         {
            this.dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.LOAD_ERROR));
         }
      }
      
      private function destroyLoader() : void
      {
         MmeAssetRender.loaderManager.killCompleteCallback(this.url,this.onLoader);
         MmeAssetRender.loaderManager.releaseAsset(this.url);
      }
      
      public function eventIndexOf(param1:String, param2:String, param3:int = 1) : Array
      {
         if(!this.innerRenderer)
         {
            return null;
         }
         return this.innerRenderer.eventIndexOf(param1,param2,param3);
      }
      
      public function getMmeData() : MmeData
      {
         return this.mmeData;
      }
      
      public function getAppDomain() : ApplicationDomain
      {
         return this.appDomain;
      }
      
      public function getActionNames() : Array
      {
         if(!this.innerRenderer)
         {
            return null;
         }
         return this.innerRenderer.getActionNames();
      }
      
      public function hasActionName(param1:String) : Boolean
      {
         if(!this.innerRenderer)
         {
            return false;
         }
         return this.innerRenderer.hasActionName(param1);
      }
      
      public function getCurrActionName() : String
      {
         if(!this.innerRenderer)
         {
            return null;
         }
         return this.innerRenderer.getCurrActionName();
      }
      
      public function getCurrFrame() : int
      {
         return this.currFrame;
      }
      
      public function setLoop(param1:Boolean) : void
      {
         this.loop = param1;
      }
      
      public function getLoop() : Boolean
      {
         return this.loop;
      }
      
      public function getTotalFrame() : int
      {
         return this.totalFrame;
      }
      
      public function getTotalFrameByActionName(param1:String) : int
      {
         if(!this.innerRenderer)
         {
            return -1;
         }
         return this.innerRenderer.getTotalFrameByActionName(param1);
      }
      
      public function setReferPointVisible(param1:Boolean) : void
      {
         this.referPointVisible = param1;
      }
      
      public function getReferPointVisible() : Boolean
      {
         return this.referPointVisible;
      }
      
      public function getCurrReferPoints() : Array
      {
         if(!this.innerRenderer)
         {
            return null;
         }
         return this.innerRenderer.getCurrReferPoints();
      }
      
      public function getCurrReferPointByName(param1:String) : PointElementData
      {
         if(!this.innerRenderer)
         {
            return null;
         }
         return this.innerRenderer.getCurrReferPointByName(param1);
      }
      
      public function getReferPointsFromAction(param1:String, param2:int) : Array
      {
         if(!this.innerRenderer)
         {
            return null;
         }
         return this.innerRenderer.getReferPointsFromAction(param1,param2);
      }
      
      public function getReferPointFromActionByName(param1:String, param2:int, param3:String) : PointElementData
      {
         if(!this.innerRenderer)
         {
            return null;
         }
         return this.innerRenderer.getReferPointFromActionByName(param1,param2,param3);
      }
      
      public function setFrameRate(param1:int) : void
      {
         this.frameRate = param1;
      }
      
      public function getFrameRate() : int
      {
         return this.frameRate;
      }
      
      public function setMmeAsset(param1:com.tencent.morefun.naruto.mmefile.render.MmeAsset) : void
      {
         this.mmeAsset = param1 || MmeAsset.mmeAsset;
      }
      
      public function getMmeAsset() : com.tencent.morefun.naruto.mmefile.render.MmeAsset
      {
         return this.mmeAsset;
      }
      
      public function unload() : void
      {
         this.stop();
         this.destroyInnerRenderer();
         this.destroyLoader();
         this.removeEventListener(MmeAssetRenderEvent.READY,this.onAutoPlayReady);
         this.removeEventListener(MmeAssetRenderEvent.LOAD_ERROR,this.onAutoPlayReady);
         this.currFrame = -1;
         this.totalFrame = 0;
         this.mmeData = null;
         this.url = null;
         this.appDomain = null;
      }
      
      function destroyInnerRenderer() : void
      {
         if(this.innerRenderer)
         {
            this.innerRenderer.destroy();
            this.innerRenderer = null;
         }
      }
      
      public function destroy() : void
      {
         this.unload();
         if(parent)
         {
            parent.removeChild(this);
         }
         this.mmeAsset = null;
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         if(!param3)
         {
            return super.hitTestPoint(param1,param2,param3);
         }
         if(this.innerRenderer && this.innerRenderer is SimpleInnerRenderer)
         {
            return SimpleInnerRenderer(this.innerRenderer).hitTestPoint(param1,param2);
         }
         return super.hitTestPoint(param1,param2,param3);
      }
      
      public function autoSetNull() : void
      {
         this.mmeData = null;
         this.url = null;
         this.appDomain = null;
         this.mmeAsset = null;
         this.innerRenderer = null;
         shape = null;
      }
   }
}
