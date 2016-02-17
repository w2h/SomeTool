package bag.data
{
   import flash.geom.Point;
   
   public class TreasureMapItemData extends ItemData
   {
       
      public var location:String;
      
      public var itemWeight:int;
      
      public var battleWeight:int;
      
      public var dropItemId:uint;
      
      public var battleId:uint;
      
      public var mapLevel:int;
      
      public var mapId:uint;
      
      public var position:Point;
      
      public var roleId:int;
      
      public function TreasureMapItemData()
      {
         super();
      }
   }
}
