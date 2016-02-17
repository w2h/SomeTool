package throughTheBeast.utils
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   
   public function DrawTarget(param1:DisplayObject, param2:Boolean = false, param3:Number = 0, param4:Number = 0) : BitmapData
   {
      var _loc7_:BitmapData = null;
      if(!param1.parent)
      {
         container.addChild(param1);
      }
      var _loc5_:Rectangle = param1.getBounds(param1.parent);
      var _loc6_:Matrix = param1.transform.matrix;
      _loc6_.tx = param1.x - _loc5_.x;
      _loc6_.ty = param1.y - _loc5_.y;
      if(param3 != 0 && param4 != 0)
      {
         _loc7_ = new BitmapData(param3,param4,true,0);
      }
      else
      {
         _loc7_ = new BitmapData(_loc5_.width,_loc5_.height,true,0);
      }
      _loc7_.draw(param1,_loc6_,null,null,null,param2);
      if(param1.parent == container)
      {
         container.removeChild(param1);
      }
      return _loc7_;
   }
}

const container:Sprite = new Sprite();
