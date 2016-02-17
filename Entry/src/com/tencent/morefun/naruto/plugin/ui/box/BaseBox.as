package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
   
   public class BaseBox extends Sprite implements IBox
   {
      
      public static const SHOW:String = "show";
      
      public static const HIDE:String = "hide";
      
      private static var baseBoxCount:int;
       
      private var _content:DisplayObjectContainer;
      
      private var _background:DisplayObjectContainer;
      
      private var _modal:Boolean;
      
      private var _modalColor:int;
      
      private var _modalAlpha:Number;
      
      private var _tween:Boolean;
      
      private var _isDestroy:Boolean;
      
      private var _destroyOnHided:Boolean;
      
      private var _name:String;
      
      private var _location:int;
      
      private var _attackIndex:int;
      
      private var _attackTarget:String;
      
      private var _closeButton:DisplayObject;
      
      private var _enabled:Boolean;
      
      private var _enterBattleClose:Boolean = true;
      
      private var _data:Object;
      
      private var _isShowing:Boolean = false;
      
      protected var _isShow:Boolean = false;
      
      public function BaseBox(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean, param4:Boolean = true, param5:int = 5, param6:String = null)
      {
         super();
         mouseChildren = true;
         mouseEnabled = true;
         this._modal = param2;
         this.modalColor = 0;
         this.modalAlpha = 0.7;
         this._tween = param4;
         this._location = param5;
         if(param6 == null || param6 == "")
         {
            var param6:String = "baseBox" + BaseBox.baseBoxCount;
            BaseBox.baseBoxCount++;
         }
         this._name = param6;
         this._destroyOnHided = param3;
         this._content = param1;
         if(!this._content)
         {
            return;
         }
         addChild(this._content);
         this._content.x = 0;
         this._content.y = 0;
         if(this._content.hasOwnProperty("background"))
         {
            this._background = this._content["background"];
            this._background.mouseEnabled = false;
            this._background.mouseChildren = false;
         }
         else
         {
            this._background = this._content.getChildByName("background") as DisplayObjectContainer;
         }
         addChildAt(this._background,0);
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
      }
      
      public function get modalColor() : int
      {
         return this._modalColor;
      }
      
      public function set modalColor(param1:int) : void
      {
         this._modalColor = param1;
         BoxManager.updateModal(this);
      }
      
      public function get modalAlpha() : Number
      {
         return this._modalAlpha;
      }
      
      public function set modalAlpha(param1:Number) : void
      {
         this._modalAlpha = param1;
         BoxManager.updateModal(this);
      }
      
      public function set enterBattleClose(param1:Boolean) : void
      {
         this._enterBattleClose = param1;
      }
      
      public function get enterBattleClose() : Boolean
      {
         return this._enterBattleClose;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         this._data = param1;
      }
      
      public function get location() : int
      {
         return this._location;
      }
      
      public function get locationOffset() : Point
      {
         return null;
      }
      
      public function set attachIndex(param1:int) : void
      {
         this._attackIndex = param1;
      }
      
      public function get attachIndex() : int
      {
         return this._attackIndex;
      }
      
      public function set attachTarget(param1:String) : void
      {
         this._attackTarget = param1;
      }
      
      public function get attachTarget() : String
      {
         return this._attackTarget;
      }
      
      override public function get name() : String
      {
         return this._name;
      }
      
      override public function get width() : Number
      {
         return this.background?this.background.width:0;
      }
      
      override public function get height() : Number
      {
         return this.background?this.background.height:0;
      }
      
      public function get content() : DisplayObjectContainer
      {
         return this._content;
      }
      
      public function get background() : DisplayObject
      {
         return this._background;
      }
      
      public function get tween() : Boolean
      {
         return this._tween;
      }
      
      public function get modal() : Boolean
      {
         return this._modal;
      }
      
      public function set modal(param1:Boolean) : void
      {
         this._modal = param1;
      }
      
      public function get modelWidth() : Number
      {
         return -1;
      }
      
      public function get modelHeight() : Number
      {
         return -1;
      }
      
      public function get closeButton() : DisplayObject
      {
         return this._closeButton;
      }
      
      public function set closeButton(param1:DisplayObject) : void
      {
         if(this.closeButton)
         {
            this.closeButton.removeEventListener(MouseEvent.CLICK,this._closeClick);
         }
         this._closeButton = param1;
         if(this.closeButton)
         {
            this.closeButton.addEventListener(MouseEvent.CLICK,this._closeClick);
         }
      }
      
      protected function _closeClick(param1:MouseEvent) : void
      {
         this.close();
      }
      
      public function get isShowing() : Boolean
      {
         return this._isShowing;
      }
      
      public function get isShow() : Boolean
      {
         return this._isShow;
      }
      
      public function get isDestroy() : Boolean
      {
         return this._isDestroy;
      }
      
      public function set isShow(param1:Boolean) : void
      {
         this._isShow = param1;
      }
      
      public function close() : void
      {
         BoxManager.hide(this);
      }
      
      public function show(param1:String = null) : IBox
      {
         return BoxManager.show(this,param1);
      }
      
      public function center() : void
      {
         this.x = LayoutManager.stageWidth - this.width >> 1;
         this.y = LayoutManager.stageHeight - this.height >> 1;
      }
      
      public function onShow() : void
      {
         this._isShowing = true;
         dispatchEvent(new ViewEvent(ViewEvent.BOX_SHOW,null,true));
      }
      
      public function onHide() : void
      {
         this._isShowing = false;
         dispatchEvent(new ViewEvent(ViewEvent.BOX_HIDE,null,true));
         if(this._destroyOnHided)
         {
            this.destroy();
         }
      }
      
      public function get disableEsc() : Boolean
      {
         return false;
      }
      
      public function destroy() : void
      {
         DisplayUtils.clear(this);
         if(null != null)
         {
            this._content.removeChildren();
         }
         this._background && this._background.removeChildren();
         this._background = null;
         if(this._closeButton !== null)
         {
            this.closeButton.removeEventListener(MouseEvent.CLICK,this._closeClick);
            if(this._closeButton.hasOwnProperty("dispose"))
            {
               (this._closeButton as Object).dispose();
            }
         }
         this._closeButton = null;
         this._content = null;
         this._isDestroy = true;
         dispatchEvent(new ViewEvent(ViewEvent.BOX_DESTROY));
      }
   }
}
