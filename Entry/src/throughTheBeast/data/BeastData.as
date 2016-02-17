package throughTheBeast.data
{
   import bag.data.BeastRuneData;
   
   public class BeastData
   {
       
      public var id:uint;
      
      public var type:int;
      
      public var name:String;
      
      public var description:String;
      
      public var baseProps:Vector.<int>;
      
      public var runes:Vector.<BeastRuneData>;
      
      public var achievedWay:String;
      
      public function BeastData()
      {
         super();
      }
   }
}
