package com.tencent.morefun.naruto.plugin.ui.layer
{
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.DisplayObject;
   
   public class BaseLayer extends Sprite
   {
       
      public var _isActivate:Boolean;
      
      public var index:int;
      
      public var updateOffset:Boolean;
      
      private var _stage:Stage;
      
      private var _reSortFun:Function;
      
      public function BaseLayer(param1:Stage, param2:Function)
      {
         super();
         tabEnabled = false;
         tabChildren = false;
         this._stage = param1;
         this._reSortFun = param2;
      }
      
      public function get isActivate() : Boolean
      {
         return this._isActivate;
      }
      
      public function set isActivate(param1:Boolean) : void
      {
         this._isActivate = param1;
      }
      
      public function activate() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.numChildren)
         {
            _loc1_ = getChildAt(_loc2_);
            if(_loc1_["activate"] != null)
            {
               _loc1_["activate"]();
            }
            _loc2_++;
         }
         this.isActivate = true;
         this.visible = true;
      }
      
      public function deactivate() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.numChildren)
         {
            _loc1_ = getChildAt(_loc2_);
            if(_loc1_["deactivate"] != null)
            {
               _loc1_["deactivate"]();
            }
            _loc2_++;
         }
         this.isActivate = false;
         this.visible = false;
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:DisplayObject = super.addChild(param1);
         if(!this._stage.contains(this))
         {
            this._stage.addChild(this);
            this._reSortFun();
         }
         return _loc2_;
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         if(param1.parent != this)
         {
            return null;
         }
         var _loc2_:DisplayObject = super.removeChild(param1);
         if(numChildren == 0 && this._stage.contains(this))
         {
            this._stage.removeChild(this);
         }
         return _loc2_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(numChildren > 0 && !this._stage.contains(this))
            {
               this._stage.addChild(this);
               this._reSortFun();
            }
         }
         else if(this._stage.contains(this))
         {
            this._stage.removeChild(this);
         }
      }
   }
}
