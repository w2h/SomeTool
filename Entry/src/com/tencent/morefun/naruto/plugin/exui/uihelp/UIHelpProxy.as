package com.tencent.morefun.naruto.plugin.exui.uihelp
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.util.GameTip;
   import flash.utils.getQualifiedClassName;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.events.Event;
   
   [Event(name="change",type="flash.events.Event")]
   public class UIHelpProxy extends EventDispatcher
   {
       
      private var _name:String;
      
      private var _dict:Dictionary;
      
      private var _visible:Boolean;
      
      private var _borderClass:Class;
      
      private var _borderWidth:Number;
      
      private var _enabled:Boolean;
      
      private var _mask:Sprite;
      
      public function UIHelpProxy(param1:String, param2:Class, param3:Number = 0)
      {
         super();
         this._name = param1;
         this._borderClass = param2;
         this._borderWidth = param3;
         this._enabled = true;
         this._mask = new Sprite();
      }
      
      public function getHelp(param1:String) : IUIHelpTips
      {
         return this._dict[param1] as IUIHelpTips;
      }
      
      public function pushHelp(param1:IUIHelpTips, param2:Boolean = false) : void
      {
         this._dict = this._dict || new Dictionary(false);
         if(param2 && this._dict[param1.id])
         {
            this.removeHelp(param1.id).dispose();
         }
         if(!this._dict[param1.id])
         {
            this._dict[param1.id] = param1;
         }
         else
         {
            GameTip.show("[" + getQualifiedClassName(this) + "]id为" + param1.id + "的IUIHelpTips重复注册");
         }
      }
      
      public function removeHelp(param1:String) : IUIHelpTips
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:IUIHelpTips = this._dict[param1] as IUIHelpTips;
         if(_loc2_)
         {
            _loc2_.view.parent && _loc2_.view.parent.removeChild(_loc2_.view);
            this._dict[param1] = null;
            _loc3_ = this._dict[_loc2_] as DisplayObject;
            if(_loc3_)
            {
               _loc3_.parent && _loc3_.parent.removeChild(_loc3_);
               this._dict[_loc2_] = null;
            }
         }
         return _loc2_;
      }
      
      private function debugAreaIn(param1:Rectangle, param2:DisplayObjectContainer, param3:uint = 16711680, param4:uint = 1, param5:Number = 1) : void
      {
         var _loc6_:Shape = new Shape();
         _loc6_.graphics.lineStyle(param4,param3,param5);
         _loc6_.graphics.drawRect(param1.x,param1.y,param1.width,param1.height);
         param2.addChild(_loc6_);
      }
      
      private function debugTargetInStage(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.getBounds(param1.stage);
         this.debugAreaIn(_loc2_,param1.stage);
      }
      
      public function showHelpsIn(param1:DisplayObjectContainer) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:Rectangle = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:IUIHelpTips = null;
         var _loc9_:uint = 0;
         var _loc10_:* = undefined;
         if(!param1.stage || !this._enabled)
         {
            return;
         }
         param1.stage.addEventListener(MouseEvent.CLICK,this.stageClickHandler,true,int.MAX_VALUE);
         var _loc2_:Point = param1.globalToLocal(new Point(0,0));
         this._mask.graphics.clear();
         this._mask.graphics.clear();
         this._mask.graphics.beginFill(0,0.5);
         this._mask.graphics.drawRect(_loc2_.x,_loc2_.y,param1.stage.stageWidth,param1.stage.stageHeight);
         param1.addChild(this._mask);
         var _loc3_:uint = 1 << 0;
         var _loc4_:uint = 1 << 1;
         for(_loc10_ in this._dict)
         {
            _loc8_ = this._dict[_loc10_] as IUIHelpTips;
            if(!_loc8_ || !this.isVisible(_loc8_.relatedObject) || !_loc8_.enabled)
            {
               _loc8_ && this.hideHelp(_loc8_.id);
            }
            else
            {
               _loc5_++;
               _loc6_ = _loc8_.relatedBounds;
               _loc2_ = _loc8_.relatedObject.parent.localToGlobal(new Point(_loc8_.relatedObject.x,_loc8_.relatedObject.y));
               _loc2_ = param1.globalToLocal(_loc2_);
               _loc6_.x = _loc6_.x + _loc2_.x;
               _loc6_.y = _loc6_.y + _loc2_.y;
               this._mask.graphics.drawRect(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
               if(this._borderClass)
               {
                  if(_loc8_.borderEnabled)
                  {
                     if(!this._dict[_loc8_])
                     {
                        this._dict[_loc8_] = new this._borderClass();
                     }
                     _loc7_ = this._dict[_loc8_] as DisplayObject;
                     _loc7_.height = _loc6_.height + this._borderWidth * 2;
                     _loc7_.width = _loc6_.width + this._borderWidth * 2;
                     _loc7_.x = _loc6_.x - this._borderWidth;
                     _loc7_.y = _loc6_.y - this._borderWidth;
                     if("mouseChildren" in _loc7_)
                     {
                        _loc7_["mouseChildren"] = false;
                     }
                     if("mouseEnabled" in _loc7_)
                     {
                        _loc7_["mouseEnabled"] = false;
                     }
                     param1.addChild(_loc7_);
                  }
                  else
                  {
                     _loc7_ = this._dict[_loc8_] as DisplayObject;
                     if(_loc7_)
                     {
                        _loc7_.parent && _loc7_.parent.removeChild(_loc7_);
                     }
                  }
               }
               _loc9_ = 0;
               if((_loc8_.direction & UIHelpDirection.LEFT) > 0)
               {
                  _loc9_ = _loc9_ | _loc3_;
                  _loc8_.view.x = _loc6_.left;
               }
               else if((_loc8_.direction & UIHelpDirection.RIGHT) > 0)
               {
                  _loc9_ = _loc9_ | _loc3_;
                  _loc8_.view.x = _loc6_.right;
               }
               if((_loc8_.direction & UIHelpDirection.TOP) > 0)
               {
                  _loc9_ = _loc9_ | _loc4_;
                  _loc8_.view.y = _loc6_.top;
               }
               else if((_loc8_.direction & UIHelpDirection.BOTTOM) > 0)
               {
                  _loc9_ = _loc9_ | _loc4_;
                  _loc8_.view.y = _loc6_.bottom;
               }
               if((_loc9_ & _loc3_) == 0)
               {
                  _loc8_.view.x = (_loc6_.left + _loc6_.right) / 2;
               }
               if((_loc9_ & _loc4_) == 0)
               {
                  _loc8_.view.y = (_loc6_.top + _loc6_.bottom) / 2;
               }
               _loc8_.view.x = _loc8_.view.x + _loc8_.offset.x;
               _loc8_.view.y = _loc8_.view.y + _loc8_.offset.y;
               param1.addChild(_loc8_.view);
            }
         }
         this._mask.graphics.endFill();
         if(_loc5_ == 0)
         {
            this._mask.parent && this._mask.parent.removeChild(this._mask);
         }
         if(!this._visible)
         {
            this._visible = true;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      private function isVisible(param1:DisplayObject, param2:uint = 5, param3:uint = 0) : Boolean
      {
         var _loc5_:Boolean = param1.visible && param1.stage;
         if(_loc5_ && param3 < param2 && param1.parent)
         {
            _loc5_ = _loc5_ && arguments.callee.call(null,param1.parent,param3 + 1);
         }
         return _loc5_;
      }
      
      private function stageClickHandler(param1:MouseEvent) : void
      {
         param1.currentTarget.removeEventListener(param1.type,arguments.callee);
         this._mask && this.hideAllHelps();
      }
      
      public function hideAllHelps() : void
      {
         var _loc1_:String = null;
         this._mask.parent && this._mask.parent.removeChild(this._mask);
         for(_loc1_ in this._dict)
         {
            this._dict[_loc1_] && this.hideHelp(_loc1_);
         }
         if(this._visible)
         {
            this._visible = false;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function hideHelp(param1:String) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:IUIHelpTips = this._dict[param1] as IUIHelpTips;
         if(_loc2_)
         {
            _loc2_.view.parent && _loc2_.view.parent.removeChild(_loc2_.view);
            _loc3_ = this._dict[_loc2_] as DisplayObject;
            if(_loc3_)
            {
               _loc3_.parent && _loc3_.parent.removeChild(_loc3_);
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:IUIHelpTips = null;
         var _loc2_:String = null;
         this._mask.parent && this._mask.parent.removeChild(this._mask);
         this._mask = null;
         for(_loc2_ in this._dict)
         {
            _loc1_ = this._dict[_loc2_] as IUIHelpTips;
            if(_loc1_)
            {
               this.removeHelp(_loc1_.id);
               _loc1_.dispose();
            }
         }
         this._dict = null;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get visible() : Boolean
      {
         return this._visible;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
         if(!this._enabled && this._visible)
         {
            this.hideAllHelps();
         }
      }
   }
}
