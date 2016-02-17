package map.events
{
   import flash.events.Event;
   
   public class MapElementEvent extends Event
   {
      
      public static const CHANGE_XY:String = "changeXY";
      
      public static const DESTROY:String = "destroy";
      
      public static const IN_VIEWPOINT:String = "inViewpoint";
      
      public static const OUT_VIEWPOINT:String = "outViewpoint";
      
      public static const MOUSE_OVER_ELEMENT:String = "mouseOverElement";
      
      public static const MOUSE_OUT_ELEMENT:String = "mouseOutElement";
      
      public static const MOUSE_DOWN_ELEMENT:String = "mouseDownElement";
      
      public static const CONTACTED_BEGIN:String = "contacted_begin";
      
      public static const CONTACTED_END:String = "contacted_end";
       
      public function MapElementEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
