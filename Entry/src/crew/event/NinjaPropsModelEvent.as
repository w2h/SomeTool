package crew.event
{
   import flash.events.Event;
   import crew.data.NinjaPropsInfo;
   
   public class NinjaPropsModelEvent extends Event
   {
      
      public static const PROPS_CHANGE:String = "propsChagne";
      
      public static const BAG_PROPS_CHANGE:String = "bagPropsChange";
      
      public static const USING_PROPS_CHANGE:String = "usingPropsChange";
       
      public var props:Vector.<NinjaPropsInfo>;
      
      public var changes:Vector.<NinjaPropsInfo>;
      
      public var extra;
      
      public function NinjaPropsModelEvent(param1:String, param2:Vector.<NinjaPropsInfo> = null, param3:Boolean = false)
      {
         this.props = param2;
         super(param1,param3,false);
      }
      
      override public function clone() : Event
      {
         return new NinjaPropsModelEvent(type,this.props,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("NinjaPropsEvent","type","props","bubbles","cancelable","eventPhase");
      }
   }
}
