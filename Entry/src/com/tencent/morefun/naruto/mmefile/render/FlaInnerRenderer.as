package com.tencent.morefun.naruto.mmefile.render
{
   import flash.system.ApplicationDomain;
   import flash.display.MovieClip;
   import com.tencent.morefun.naruto.mmefile.render.datas.FlaData;
   import flash.display.Bitmap;
   import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
   import com.tencent.morefun.naruto.mmefile.render.datas.FlaFrameBitmapData;
   import flash.display.DisplayObject;
   import com.tencent.morefun.naruto.mmefile.render.datas.FlaFrameEventData;
   import flash.events.Event;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.display.FrameLabel;
   
   public class FlaInnerRenderer extends BaseInnerRenderer
   {
       
      private var mmeAsset:com.tencent.morefun.naruto.mmefile.render.MmeAsset;
      
      private var appDomain:ApplicationDomain;
      
      private var mc:MovieClip;
      
      private var events:Array;
      
      private var flaData:FlaData;
      
      private var frameBitmapDatas:Array;
      
      private var frameBitmap:Bitmap;
      
      public function FlaInnerRenderer(param1:MmeAssetRender, param2:com.tencent.morefun.naruto.mmefile.render.MmeAsset, param3:ApplicationDomain)
      {
         this.mmeAsset = param2;
         this.appDomain = param3;
         this.flaData = param2.getFlaData(param3);
         super(param1);
      }
      
      override function gotoAction(param1:String, param2:int = 0) : Boolean
      {
         var _loc3_:MovieClip = null;
         if(param1 != currActionName)
         {
            this.destroyMc();
            this.destroyFrameBitmapData();
            if(this.flaData && this.flaData.hasActionName(param1))
            {
               this.frameBitmapDatas = this.flaData.getAction(param1);
               currTotalFrame = this.flaData.getTotalFrame(param1) - 1;
            }
            else
            {
               this.mc = MmeAsset.createObject(param1,this.appDomain) as MovieClip;
               this.mc.gotoAndStop(this.mc.totalFrames);
               render.addChild(this.mc);
               this.mc.gotoAndStop(1);
               currTotalFrame = this.mc.totalFrames - 1;
            }
            _loc3_ = MmeAsset.createObject(param1 + "_Data",this.appDomain) as MovieClip;
            if(_loc3_)
            {
               this.events = this.createEvents(_loc3_);
            }
            else
            {
               this.events = null;
            }
            currActionName = param1;
         }
         setCurrFrame(param2);
         this.update();
         return true;
      }
      
      override public function getActionNames() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.appDomain.getQualifiedDefinitionNames())
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      override public function hasActionName(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in this.appDomain.getQualifiedDefinitionNames())
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function getCurrReferPoints() : Array
      {
         throw new Error("些方法暂未实现，请找懒惰的fixchen");
      }
      
      override public function getCurrReferPointByName(param1:String) : PointElementData
      {
         throw new Error("些方法暂未实现，请找懒惰的fixchen");
      }
      
      override public function getReferPointsFromAction(param1:String, param2:int) : Array
      {
         var _loc5_:Array = null;
         var _loc6_:FlaFrameBitmapData = null;
         var _loc7_:MovieClip = null;
         var _loc8_:* = 0;
         var _loc9_:DisplayObject = null;
         var _loc10_:PointElementData = null;
         var _loc3_:Array = [];
         var _loc4_:int = param2;
         if(_loc4_ == -1)
         {
            _loc4_ = currFrame;
         }
         if(this.frameBitmapDatas)
         {
            _loc5_ = currActionName == param1?this.frameBitmapDatas:this.flaData.getAction(param1);
            for each(_loc6_ in _loc5_)
            {
               if(_loc6_.index <= _loc4_ && _loc6_.index + _loc6_.length > _loc4_)
               {
                  return _loc6_.referPointDatas || _loc3_;
               }
            }
         }
         else
         {
            _loc7_ = MmeAsset.createObject(param1 + "_Data",this.appDomain) as MovieClip;
            if(_loc7_)
            {
               _loc7_.gotoAndStop(_loc4_ + 1);
               _loc8_ = _loc7_.numChildren - 1;
               while(_loc8_ >= 0)
               {
                  _loc9_ = _loc7_.getChildAt(_loc8_);
                  if(_loc9_.name.indexOf("referPoint") == 0)
                  {
                     _loc10_ = new PointElementData();
                     _loc10_.x = _loc9_.x;
                     _loc10_.y = _loc9_.y;
                     _loc3_.push(_loc10_);
                  }
                  _loc8_--;
               }
               return _loc3_;
            }
         }
         return _loc3_;
      }
      
      override public function getReferPointFromActionByName(param1:String, param2:int, param3:String) : PointElementData
      {
         throw new Error("些方法暂未实现，请找懒惰的fixchen");
      }
      
      override public function eventIndexOf(param1:String, param2:String, param3:int = 1) : Array
      {
         var _loc4_:Array = null;
         var _loc6_:FlaFrameEventData = null;
         var _loc7_:MovieClip = null;
         var _loc8_:Array = null;
         if(param1 == currActionName)
         {
            _loc4_ = this.events;
         }
         else
         {
            _loc7_ = MmeAsset.createObject(param1 + "_Data",this.appDomain) as MovieClip;
            if(_loc7_)
            {
               _loc4_ = this.createEvents(_loc7_);
            }
         }
         var _loc5_:Array = [];
         for each(_loc6_ in _loc4_)
         {
            _loc8_ = _loc6_.event.split(",");
            if(_loc8_.indexOf(param2) != -1)
            {
               _loc5_.push(_loc6_.index);
               if(param3 > 0 && _loc5_.length >= param3)
               {
                  return _loc5_;
               }
            }
         }
         return _loc5_;
      }
      
      private function onFlaEvent(param1:Event) : void
      {
         var _loc2_:String = param1["name"];
         var _loc3_:String = param1["param"];
         var _loc4_:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT,_loc2_);
         _loc4_.param = _loc3_;
         render.dispatchEvent(_loc4_);
      }
      
      override function update() : void
      {
         if(this.frameBitmapDatas)
         {
            this.updateFrameBitmapData();
         }
         else if(this.mc)
         {
            this.updateMc();
         }
      }
      
      private function updateFrameBitmapData() : void
      {
         var _loc1_:FlaFrameBitmapData = null;
         var _loc2_:FlaFrameBitmapData = null;
         if(this.frameBitmap)
         {
            this.frameBitmap.bitmapData = null;
         }
         else
         {
            this.frameBitmap = new Bitmap();
            render.addChild(this.frameBitmap);
         }
         for each(_loc2_ in this.frameBitmapDatas)
         {
            if(_loc2_.index <= currFrame && _loc2_.index + _loc2_.length > currFrame)
            {
               _loc1_ = _loc2_;
               break;
            }
         }
         if(_loc1_)
         {
            this.frameBitmap.x = _loc1_.x;
            this.frameBitmap.y = _loc1_.y;
            if(!_loc1_.bitmapData && _loc1_.bytes && _loc1_.width && _loc1_.height)
            {
               _loc1_.bitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,0);
               _loc1_.bitmapData.setPixels(new Rectangle(0,0,_loc1_.width,_loc1_.height),_loc1_.bytes);
               _loc1_.bytes = null;
            }
            this.frameBitmap.bitmapData = _loc1_.bitmapData;
         }
         this.updateEvent();
      }
      
      private function destroyFrameBitmapData() : void
      {
         if(this.frameBitmap)
         {
            this.frameBitmap.bitmapData = null;
            if(this.frameBitmap.parent)
            {
               this.frameBitmap.parent.removeChild(this.frameBitmap);
            }
            this.frameBitmap = null;
         }
      }
      
      private function updateMc() : void
      {
         this.eachgoto(this.mc);
         this.updateEvent();
      }
      
      private function createEvents(param1:MovieClip) : Array
      {
         var _loc3_:FrameLabel = null;
         var _loc4_:FlaFrameEventData = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1.currentLabels)
         {
            if(_loc3_.name.indexOf("e:") == 0)
            {
               _loc4_ = new FlaFrameEventData();
               _loc4_.index = _loc3_.frame;
               _loc4_.event = _loc3_.name.substr(2);
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function updateEvent() : void
      {
         var _loc1_:FlaFrameEventData = null;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:MmeAssetRenderEvent = null;
         for each(_loc1_ in this.events)
         {
            if(currFrame == _loc1_.index)
            {
               _loc2_ = _loc1_.event.split(",");
               for each(_loc3_ in _loc2_)
               {
                  _loc4_ = _loc3_.split(":");
                  if(_loc4_.length > 0)
                  {
                     _loc5_ = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT,_loc4_[0]);
                     if(_loc4_.length > 1)
                     {
                        _loc5_.param = _loc4_[1];
                     }
                     render.dispatchEvent(_loc5_);
                  }
               }
            }
         }
      }
      
      private function eachgoto(param1:MovieClip) : void
      {
         var _loc3_:MovieClip = null;
         param1.gotoAndStop(currFrame % (currTotalFrame + 1) + 1);
         var _loc2_:int = param1.numChildren;
         while(_loc2_--)
         {
            _loc3_ = param1.getChildAt(_loc2_) as MovieClip;
            if(_loc3_)
            {
               this.eachgoto(_loc3_);
            }
         }
      }
      
      private function destroyMc() : void
      {
         if(this.mc)
         {
            this.mc.stop();
            this.mc.removeEventListener("FlaEvent",this.onFlaEvent);
            if(this.mc.parent)
            {
               this.mc.parent.removeChild(this.mc);
            }
            this.mc = null;
         }
      }
      
      override public function destroy() : void
      {
         this.destroyMc();
         this.destroyFrameBitmapData();
         currFrame = -1;
         this.mmeAsset = null;
         this.appDomain = null;
         this.events = null;
         this.frameBitmapDatas = null;
         this.flaData = null;
         super.destroy();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.mmeAsset = null;
         this.appDomain = null;
         this.mc = null;
         this.events = null;
         this.flaData = null;
         this.frameBitmapDatas = null;
         this.frameBitmap = null;
      }
   }
}
