package com.tencent.morefun.naruto.plugin.exui.uihelp
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class UIHelpTips implements IUIHelpTips
   {
       
      protected var _id:String;
      
      protected var _view:DisplayObject;
      
      protected var _direction:uint;
      
      protected var _relatedObject:DisplayObject;
      
      protected var _relatedBoundsProvider:Function;
      
      protected var _enabledProvider:Function;
      
      protected var _borderEnabled:Boolean;
      
      protected var _offset:Point;
      
      public function UIHelpTips(param1:String, param2:DisplayObject, param3:DisplayObject, param4:uint)
      {
         super();
         this._id = param1;
         this._view = param2;
         this._relatedObject = param3;
         this._direction = param4;
         this._borderEnabled = true;
      }
      
      public function setEnabledProvider(param1:Function) : void
      {
         this._enabledProvider = param1;
      }
      
      public function setRelatedBoundsProvider(param1:Function) : void
      {
         this._relatedBoundsProvider = param1;
      }
      
      public function dispose() : void
      {
         if(this._view)
         {
            this._view.parent && this._view.parent.removeChild(this._view);
            this._view = null;
         }
         this._relatedObject = null;
         this._relatedBoundsProvider = null;
         this._enabledProvider = null;
      }
      
      public function get enabled() : Boolean
      {
         if(this._enabledProvider != null)
         {
            return this._enabledProvider.call(null,this);
         }
         return true;
      }
      
      public function get relatedBounds() : Rectangle
      {
         if(this._relatedBoundsProvider != null)
         {
            return this._relatedBoundsProvider.call(null,this);
         }
         return this._relatedObject.getBounds(this._relatedObject);
      }
      
      public function get relatedObject() : DisplayObject
      {
         return this._relatedObject;
      }
      
      public function set relatedObject(param1:DisplayObject) : void
      {
         this._relatedObject = param1;
      }
      
      public function get direction() : uint
      {
         return this._direction;
      }
      
      public function set direction(param1:uint) : void
      {
         this._direction = param1;
      }
      
      public function get view() : DisplayObject
      {
         return this._view;
      }
      
      public function set view(param1:DisplayObject) : void
      {
         this._view = param1;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get borderEnabled() : Boolean
      {
         return this._borderEnabled;
      }
      
      public function set borderEnabled(param1:Boolean) : void
      {
         this._borderEnabled = param1;
      }
      
      public function get offset() : Point
      {
         return this._offset = this._offset || new Point();
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
      }
   }
}
