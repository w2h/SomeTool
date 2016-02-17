package tactic.event
{
   import flash.events.Event;
   import tactic.model.TacticUniqueModel;
   
   public class TacticModelEvent extends Event
   {
      
      public static const CHANGE:String = "change";
       
      public var sourceType:uint;
      
      public var model:TacticUniqueModel;
      
      public var data;
      
      public function TacticModelEvent(param1:String, param2:uint, param3:* = null, param4:Boolean = false)
      {
         this.sourceType = param2;
         this.data = param3;
         super(param1,param4,false);
      }
      
      override public function clone() : Event
      {
         return new TacticModelEvent(type,this.sourceType,this.data,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("TacticModelEvent","type","sourceType","data");
      }
   }
}
