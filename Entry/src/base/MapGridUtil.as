package base
{
   import flash.geom.Point;
   import flash.display.BitmapData;
   import flash.display.Shape;
   
   public class MapGridUtil
   {
      
      private static var pointPool:Vector.<Point> = new Vector.<Point>();
      
      private static var pointPoolIndex:int = -1;
       
      public function MapGridUtil()
      {
         super();
      }
      
      private static function newPoint(param1:int, param2:int) : Point
      {
         pointPoolIndex++;
         if(pointPoolIndex >= pointPool.length)
         {
            pointPool.push(new Point());
         }
         pointPool[pointPoolIndex].x = param1;
         pointPool[pointPoolIndex].y = param2;
         return pointPool[pointPoolIndex];
      }
      
      public static function resetPoint() : void
      {
         pointPoolIndex = -1;
      }
      
      public static function getPixelPoint(param1:int, param2:int, param3:int, param4:int, param5:int) : Point
      {
         var _loc6_:Number = Math.sqrt(param1 * param1 + param2 * param2) / 2;
         var _loc7_:Number = param2 / param1;
         var _loc8_:Number = param2 / 2 / _loc6_;
         var _loc9_:Number = param1 / 2 / _loc6_;
         var _loc10_:int = param3 / 2 - (param5 - param4) * _loc6_ * _loc9_;
         var _loc11_:int = -_loc7_ * param3 / 2 + (param5 + param4 + 1) * _loc6_ * _loc8_;
         return new Point(_loc10_,_loc11_);
      }
      
      public static function getTilePoint(param1:int, param2:int, param3:int, param4:int, param5:int) : Point
      {
         var _loc6_:Number = Math.sqrt(param1 * param1 + param2 * param2) / 2;
         var _loc7_:Number = param2 / param1;
         var _loc8_:Number = param2 / 2 / _loc6_;
         var _loc9_:Number = param1 / 2 / _loc6_;
         var _loc10_:Number = (param5 + _loc7_ * param3 / 2) / _loc8_;
         var _loc11_:Number = (param3 / 2 - param4) / _loc9_;
         var _loc12_:Number = (_loc10_ + _loc11_) / 2;
         var _loc13_:Number = (_loc10_ - _loc11_) / 2;
         var _loc14_:int = _loc13_ / _loc6_;
         var _loc15_:int = _loc12_ / _loc6_;
         return newPoint(_loc14_,_loc15_);
      }
      
      public static function getWalkableSignMap(param1:int, param2:int) : BitmapData
      {
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.lineStyle(1,16711680,0.6);
         _loc3_.graphics.moveTo(0,param2 / 2);
         _loc3_.graphics.lineTo(param1 / 2,0);
         _loc3_.graphics.lineTo(param1,param2 / 2);
         _loc3_.graphics.lineTo(param1 / 2,param2);
         _loc3_.graphics.lineTo(0,param2 / 2);
         var _loc4_:Number = param2 / 4;
         var _loc5_:Number = _loc4_ * param1 / param2;
         _loc3_.graphics.moveTo(_loc5_,param2 / 2);
         _loc3_.graphics.lineTo(param1 / 2,_loc4_);
         _loc3_.graphics.lineTo(param1 - _loc5_,param2 / 2);
         _loc3_.graphics.lineTo(param1 / 2,param2 - _loc4_);
         _loc3_.graphics.lineTo(_loc5_,param2 / 2);
         _loc3_.graphics.moveTo(0,param2 / 2);
         _loc3_.graphics.lineTo(param1,param2 / 2);
         _loc3_.graphics.moveTo(param1 / 2,0);
         _loc3_.graphics.lineTo(param1 / 2,param2);
         var _loc6_:BitmapData = new BitmapData(param1,param2,true,0);
         _loc6_.draw(_loc3_);
         return _loc6_;
      }
      
      public static function getShadowSignMap(param1:int, param2:int) : BitmapData
      {
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.lineStyle(1,255,0.5);
         _loc3_.graphics.beginFill(16776960,0.2);
         _loc3_.graphics.moveTo(0,param2 / 2);
         _loc3_.graphics.lineTo(param1 / 2,0);
         _loc3_.graphics.lineTo(param1,param2 / 2);
         _loc3_.graphics.lineTo(param1 / 2,param2);
         _loc3_.graphics.endFill();
         var _loc4_:BitmapData = new BitmapData(param1,param2,true,0);
         _loc4_.draw(_loc3_);
         return _loc4_;
      }
      
      public static function adjustToGridCenter(param1:int, param2:int, param3:int, param4:Point) : Point
      {
         var _loc5_:Point = MapGridUtil.getTilePoint(param1,param2,param3,param4.x,param4.y);
         var _loc6_:Point = MapGridUtil.getPixelPoint(param1,param2,param3,_loc5_.x,_loc5_.y);
         return _loc6_;
      }
   }
}
