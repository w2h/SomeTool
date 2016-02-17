package dungeon.model.data
{
   import dungeon.def.UniversalWipeoutStateDef;
   
   public class UniversalWipeoutInfo
   {
       
      public var type:uint;
      
      public var remainCount:uint;
      
      public var currentCount:uint;
      
      public var remainTime:uint;
      
      public var currentTime:uint;
      
      public var state:uint;
      
      public var extra:Object;
      
      public function UniversalWipeoutInfo(param1:uint)
      {
         super();
         this.type = param1;
         this.state = UniversalWipeoutStateDef.WAIT;
      }
      
      public function get name() : String
      {
         return this.extra && this.extra.hasOwnProperty("name")?this.extra["name"]:"未知";
      }
   }
}
