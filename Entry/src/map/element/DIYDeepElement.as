package map.element
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
   
   public class DIYDeepElement
   {
       
      private var _deepPoints:Array;
      
      public function DIYDeepElement()
      {
         this._deepPoints = [];
         super();
      }
      
      public function get deepPoints() : Array
      {
         return this._deepPoints || this.createDefaultPoints();
      }
      
      public function set deepPoints(param1:Array) : void
      {
         this._deepPoints = param1;
      }
      
      public function transformMMePoints(param1:Array, param2:Matrix, param3:int, param4:int) : void
      {
         var _loc5_:Point = null;
         var _loc6_:PointElementData = null;
         if(param1.length == 0)
         {
            if(!this._deepPoints[0])
            {
               _loc5_ = new Point();
               this._deepPoints.push(_loc5_);
            }
            _loc5_ = this._deepPoints[0];
            _loc5_.x = param3;
            _loc5_.y = param4;
            return;
         }
         for each(_loc6_ in param1)
         {
            _loc5_ = new Point();
            _loc5_.x = _loc6_.x;
            _loc5_.y = _loc6_.y;
            _loc5_ = param2.transformPoint(_loc5_);
            _loc5_.x = _loc5_.x + param3;
            _loc5_.y = _loc5_.y + param4;
            this._deepPoints.push(_loc5_);
         }
      }
      
      public function updateMMePoints(param1:Array, param2:Matrix, param3:int, param4:int) : void
      {
         var _loc5_:Point = null;
         var _loc6_:PointElementData = null;
         for each(_loc6_ in param1)
         {
            _loc5_.x = _loc6_.x;
            _loc5_.y = _loc6_.y;
            _loc5_ = param2.transformPoint(_loc5_);
            _loc5_.x = _loc5_.x + param3;
            _loc5_.y = _loc5_.y + param4;
         }
      }
      
      private function createDefaultPoints() : Array
      {
         return [new Point(0,0)];
      }
   }
}
