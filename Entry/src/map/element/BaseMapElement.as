package map.element
{
   import flash.display.Sprite;
   import map.events.MapElementEvent;
   import flash.filters.GlowFilter;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   [Event(name="contacted",type="map.events.MapElementEvent")]
   [Event(name="mouseDownElement",type="map.events.MapElementEvent")]
   [Event(name="mouseOutElement",type="map.events.MapElementEvent")]
   [Event(name="mouseOverElement",type="map.events.MapElementEvent")]
   [Event(name="destroy",type="map.events.MapElementEvent")]
   [Event(name="outViewpoint",type="map.events.MapElementEvent")]
   [Event(name="inViewpoint",type="map.events.MapElementEvent")]
   [Event(name="changeY",type="map.events.MapElementEvent")]
   [Event(name="changeX",type="map.events.MapElementEvent")]
   public class BaseMapElement extends Sprite
   {
       
      protected var _isDestroyed:Boolean = false;
      
      protected var _isInViewPoint:Boolean = false;
      
      protected var _popupContainer:Sprite;
      
      public var layerIndex:int = -1;
      
      protected var __bound:Rectangle;
      
      public function BaseMapElement()
      {
         super();
         if(mouseEnabled && this.mouseOverFilter)
         {
            addEventListener(MapElementEvent.MOUSE_OVER_ELEMENT,this.onMouseOverElement);
            addEventListener(MapElementEvent.MOUSE_OUT_ELEMENT,this.onMouseOutElement);
         }
         if(this.needPopupContainer)
         {
            this._popupContainer = new Sprite();
         }
      }
      
      protected function onMouseOverElement(param1:MapElementEvent) : void
      {
         this.filters = [this.mouseOverFilter];
      }
      
      protected function onMouseOutElement(param1:MapElementEvent) : void
      {
         this.filters = [];
      }
      
      protected function get mouseOverFilter() : GlowFilter
      {
         return null;
      }
      
      public function get needPopupContainer() : Boolean
      {
         return false;
      }
      
      override public function set x(param1:Number) : void
      {
         throw new Error("请使用setXY方法");
      }
      
      override public function set y(param1:Number) : void
      {
         throw new Error("请使用setXY方法");
      }
      
      public function setXY(param1:int, param2:int) : void
      {
         super.x = param1;
         super.y = param2;
         if(this._popupContainer)
         {
            this._popupContainer.x = param1;
            this._popupContainer.y = param2;
         }
         this.dispatch(MapElementEvent.CHANGE_XY);
      }
      
      public function inViewPoint(param1:Boolean = true) : void
      {
         this._isInViewPoint = true;
         param1 && this.dispatch(MapElementEvent.IN_VIEWPOINT);
      }
      
      public function outViewPoint(param1:Boolean = true) : void
      {
         this._isInViewPoint = false;
         param1 && this.dispatch(MapElementEvent.OUT_VIEWPOINT);
      }
      
      public function get isInViewPoint() : Boolean
      {
         return this._isInViewPoint;
      }
      
      public function get isDestroyed() : Boolean
      {
         return this._isDestroyed;
      }
      
      public function get popupContainer() : Sprite
      {
         return this._popupContainer;
      }
      
      public function addPopup(param1:DisplayObject) : void
      {
         if(!this.needPopupContainer)
         {
            return;
         }
         if(!this._popupContainer.contains(param1))
         {
            this._popupContainer.addChild(param1);
         }
      }
      
      public function removePopup(param1:DisplayObject) : void
      {
         if(!this.needPopupContainer)
         {
            return;
         }
         if(this._popupContainer.contains(param1))
         {
            this._popupContainer.removeChild(param1);
         }
      }
      
      public function dispatch(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new MapElementEvent(param1));
         }
      }
      
      public function destroy(param1:Boolean = true) : void
      {
         removeEventListener(MapElementEvent.MOUSE_OVER_ELEMENT,this.onMouseOverElement);
         removeEventListener(MapElementEvent.MOUSE_OUT_ELEMENT,this.onMouseOutElement);
         if(this._popupContainer)
         {
            this._popupContainer.removeChildren();
            if(this._popupContainer.parent)
            {
               this._popupContainer.parent.removeChild(this._popupContainer);
            }
            this._popupContainer = null;
         }
         this._isDestroyed = true;
         param1 && this.dispatch(MapElementEvent.DESTROY);
         this.layerIndex = -1;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         this.__bound = super.getBounds(param1);
         return this.__bound;
      }
   }
}
