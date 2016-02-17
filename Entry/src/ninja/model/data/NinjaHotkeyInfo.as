package ninja.model.data
{
   public class NinjaHotkeyInfo
   {
       
      public var ninjaQ:int;
      
      public var ninjaW:int;
      
      public var ninjaE:int;
      
      public var ninjaR:int;
      
      public var ninjaT:int;
      
      public function NinjaHotkeyInfo()
      {
         super();
      }
      
      public function get list() : Vector.<int>
      {
         return new <int>[this.ninjaQ,this.ninjaW,this.ninjaE,this.ninjaR,this.ninjaT];
      }
   }
}
