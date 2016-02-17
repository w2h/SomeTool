package throughTheBeast.utils
{
   import flash.events.EventDispatcher;
   import flash.display.InteractiveObject;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import flash.events.Event;
   
   [Event(name="init",type="flash.events.Event")]
   [Event(name="complete",type="flash.events.Event")]
   public class DragMonitor extends EventDispatcher
   {
       
      private var _tolerance:uint;
      
      private var _target:InteractiveObject;
      
      private var _dragging:Boolean;
      
      private var _origin:Point;
      
      public function DragMonitor(param1:InteractiveObject)
      {
         super();
         this._target = param1;
         this._tolerance = 5;
         this._target.addEventListener(MouseEvent.MOUSE_DOWN,this.downHandler);
      }
      
      private function downHandler(param1:MouseEvent) : void
      {
         this._origin = new Point(this._target.mouseX,this._target.mouseY);
         this._target.stage.addEventListener(MouseEvent.MOUSE_UP,this.upHandler);
         this._target.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.moveHandler);
      }
      
      private function moveHandler(param1:MouseEvent) : void
      {
         if(Point.distance(this._origin,new Point(this._target.mouseX,this._target.mouseY)) >= this._tolerance)
         {
            param1.currentTarget.removeEventListener(param1.type,arguments.callee);
            this._dragging = true;
            dispatchEvent(new Event(Event.INIT));
         }
      }
      
      private function upHandler(param1:MouseEvent) : void
      {
         param1.currentTarget.removeEventListener(param1.type,arguments.callee);
         if(this._target.hasOwnProperty("stage") && this._target.stage != null)
         {
            this._target.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.moveHandler);
         }
         if(this._dragging)
         {
            this._dragging = false;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function dispose() : void
      {
         this._target.removeEventListener(MouseEvent.MOUSE_DOWN,this.downHandler);
         if(this._target.stage)
         {
            this._target.stage.removeEventListener(MouseEvent.MOUSE_UP,this.upHandler);
            this._target.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.moveHandler);
         }
         this._target = null;
      }
      
      public function get tolerance() : uint
      {
         return this._tolerance;
      }
      
      public function set tolerance(param1:uint) : void
      {
         this._tolerance = param1;
      }
      
      public function get dragging() : Boolean
      {
         return this._dragging;
      }
   }
}
