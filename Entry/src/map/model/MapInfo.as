package map.model
{
   import com.tencent.morefun.naruto.model.BaseModel;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import map.def.MapModelKeyDef;
   import base.MapGridUtil;
   import def.ModelDef;
   
   public class MapInfo extends BaseModel
   {
       
      public var mapTileWidth:int;
      
      public var mapTileHeight:int;
      
      public var mapPixelWidth:int;
      
      public var mapPixelHeight:int;
      
      public var imgPixelWidth:int;
      
      public var imgPixelHeight:int;
      
      public var tilePixelWidth:int;
      
      public var tilePixelHeight:int;
      
      public var walkableArray:Array;
      
      public var isSign:Array;
      
      public var sign:Array;
      
      public var block:Array;
      
      private var _mapId:int = -1;
      
      private var _mapLeftImgX:int;
      
      private var _mapRightImgX:int;
      
      private var _mapTopImgY:int;
      
      private var _mapBottomImgY:int;
      
      private var _mapLeftPixel:int;
      
      private var _mapRightPixel:int;
      
      private var _mapTopPixel:int;
      
      private var _mapBottomPixel:int;
      
      private var _centerPoint:Point;
      
      private var relativityCenterPoint:Point;
      
      public function MapInfo()
      {
         this.walkableArray = new Array();
         this.isSign = new Array();
         this.sign = new Array();
         this.block = new Array();
         this._centerPoint = new Point();
         this.relativityCenterPoint = new Point();
         super(ModelDef.SCENE_MAP);
      }
      
      public function getWalkable(param1:int, param2:int) : Boolean
      {
         return this.walkableArray[param2 * this.mapTileWidth + param1];
      }
      
      public function getIsSign(param1:int, param2:int) : Boolean
      {
         return this.isSign[param2 * this.mapTileWidth + param1];
      }
      
      public function getSign(param1:int, param2:int) : Point
      {
         return this.sign[param2 * this.mapTileWidth + param1];
      }
      
      public function getBlock(param1:int, param2:int) : int
      {
         var _loc3_:Point = null;
         if(this.getIsSign(param1,param2))
         {
            return this.block[param2 * this.mapTileWidth + param1];
         }
         _loc3_ = this.getSign(param1,param2);
         return this.block[_loc3_.y * this.mapTileWidth + _loc3_.x];
      }
      
      public function set mapId(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 == this._mapId)
         {
            return;
         }
         _loc2_ = this._mapId;
         this._mapId = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_ID,_loc2_,this._mapId);
      }
      
      public function get mapId() : int
      {
         return this._mapId;
      }
      
      public function setCenter(param1:int, param2:int) : void
      {
         if(this._centerPoint.x == param1 && this._centerPoint.y == param2)
         {
            return;
         }
         this._centerPoint.x = param1;
         this._centerPoint.y = param2;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.CENTER,this._centerPoint,this._centerPoint);
      }
      
      public function getCenter() : Point
      {
         return this._centerPoint;
      }
      
      public function set mapLeftPixel(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 == this._mapLeftPixel)
         {
            return;
         }
         if(param1 < 0)
         {
            var param1:int = 0;
         }
         _loc2_ = this._mapLeftPixel;
         this._mapLeftPixel = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_LEFT_PIXEL,_loc2_,this._mapLeftPixel);
      }
      
      public function get mapLeftPixel() : int
      {
         return this._mapLeftPixel;
      }
      
      public function set mapRightPixel(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 > this.mapPixelWidth)
         {
            var param1:int = this.mapPixelWidth;
         }
         _loc2_ = this._mapRightPixel;
         this._mapRightPixel = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_RIGHT_PIXEL,_loc2_,this._mapRightPixel);
      }
      
      public function get mapRightPixel() : int
      {
         return this._mapRightPixel;
      }
      
      public function set mapTopPixel(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 == this._mapTopPixel)
         {
            return;
         }
         if(param1 < 0)
         {
            var param1:int = 0;
         }
         _loc2_ = this._mapTopPixel;
         this._mapTopPixel = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_TOP_PIXEL,_loc2_,this._mapTopPixel);
      }
      
      public function get mapTopPixel() : int
      {
         return this._mapTopPixel;
      }
      
      public function set mapBottomPixel(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 > this.mapPixelHeight)
         {
            var param1:int = this.mapPixelHeight;
         }
         _loc2_ = this._mapBottomPixel;
         this._mapBottomPixel = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_BOTTOM_PIXEL,_loc2_,this._mapBottomPixel);
      }
      
      public function get mapBottomPixel() : int
      {
         return this._mapBottomPixel;
      }
      
      public function set mapLeftImgX(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 == this._mapLeftImgX)
         {
            return;
         }
         _loc2_ = this._mapLeftImgX;
         this._mapLeftImgX = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_IMG_LEFT_X,_loc2_,this._mapLeftImgX);
      }
      
      public function get mapLeftImgX() : int
      {
         return this._mapLeftImgX;
      }
      
      public function set mapRightImgX(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 == this._mapRightImgX)
         {
            return;
         }
         _loc2_ = this._mapRightImgX;
         this._mapRightImgX = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_IMG_RIGHT_X,_loc2_,this._mapRightImgX);
      }
      
      public function get mapRightImgX() : int
      {
         return this._mapRightImgX;
      }
      
      public function set mapTopImgY(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 == this._mapTopImgY)
         {
            return;
         }
         _loc2_ = this._mapTopImgY;
         this._mapTopImgY = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_IMG_TOP_Y,_loc2_,this._mapTopImgY);
      }
      
      public function get mapTopImgY() : int
      {
         return this._mapTopImgY;
      }
      
      public function set mapBottomImgY(param1:int) : void
      {
         var _loc2_:* = 0;
         if(param1 == this._mapBottomImgY)
         {
            return;
         }
         _loc2_ = this._mapBottomImgY;
         this._mapBottomImgY = param1;
         this.dispModelEvent(ModelEvent.UPDATE,MapModelKeyDef.MAP_IMG_BOTTOM_Y,_loc2_,this._mapBottomImgY);
      }
      
      public function get mapBottomImgY() : int
      {
         return this._mapBottomImgY;
      }
      
      public function checkInScreen(param1:int, param2:int) : Boolean
      {
         return param1 > this.mapLeftPixel && param1 < this.mapRightPixel && param2 > this.mapTopPixel && param2 < this.mapBottomPixel;
      }
      
      public function getRelativityCenter(param1:int, param2:int) : Point
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc5_ = Math.min(param1,this.mapPixelWidth);
         _loc6_ = Math.min(param2,this.mapPixelHeight);
         _loc3_ = Math.max(this._centerPoint.x,_loc5_ / 2);
         _loc3_ = Math.min(_loc3_,this.mapPixelWidth - _loc5_ / 2);
         _loc4_ = Math.max(this._centerPoint.y,_loc6_ / 2);
         _loc4_ = Math.min(_loc4_,this.mapPixelHeight - _loc6_ / 2);
         this.relativityCenterPoint.x = _loc3_;
         this.relativityCenterPoint.y = _loc4_;
         return this.relativityCenterPoint;
      }
      
      public function reset() : void
      {
         this.mapTileWidth = 0;
         this.mapTileHeight = 0;
         this.mapPixelWidth = 0;
         this.mapPixelHeight = 0;
         this.imgPixelWidth = 0;
         this.imgPixelHeight = 0;
         this.tilePixelWidth = 0;
         this.tilePixelHeight = 0;
         this.walkableArray = new Array();
         this.isSign = new Array();
         this.sign = new Array();
         this._mapId = 0;
         this._mapLeftPixel = 0;
         this._mapRightPixel = 0;
         this._mapTopPixel = 0;
         this._mapBottomPixel = 0;
         this._centerPoint = new Point();
      }
      
      private function getCrossPoint(param1:Number, param2:Number, param3:Point, param4:Point) : Point
      {
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc5_:Number = (param4.y - param3.y) / (param4.x - param3.x);
         var _loc6_:Number = param3.y - _loc5_ * param3.x;
         if(_loc5_ == param1)
         {
            return null;
         }
         if(_loc5_ == Infinity || _loc5_ == -Infinity)
         {
            return new Point(param3.x,param1 * param3.x + param2);
         }
         _loc7_ = (_loc6_ - param2) / (param1 - _loc5_);
         _loc8_ = param1 * _loc7_ + param2;
         return new Point(_loc7_,_loc8_);
      }
      
      public function passedTile2(param1:Point, param2:Point) : Array
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:Point = null;
         var _loc14_:* = false;
         var _loc17_:* = 0;
         var _loc18_:Point = null;
         var _loc19_:Point = null;
         var _loc20_:* = 0;
         var _loc21_:* = 0;
         var _loc3_:Point = MapGridUtil.getPixelPoint(this.tilePixelWidth,this.tilePixelHeight,this.mapPixelWidth,param1.x,param1.y);
         var _loc4_:Point = MapGridUtil.getPixelPoint(this.tilePixelWidth,this.tilePixelHeight,this.mapPixelWidth,param2.x,param2.y);
         var _loc11_:Array = new Array();
         var _loc12_:Array = new Array();
         var _loc13_:Array = new Array();
         _loc11_.push(_loc3_);
         _loc5_ = -this.tilePixelHeight / this.tilePixelWidth;
         _loc7_ = _loc3_.y - _loc5_ * _loc3_.x;
         _loc8_ = _loc4_.y - _loc5_ * _loc4_.x;
         _loc9_ = _loc7_ < _loc8_?this.tilePixelHeight:-this.tilePixelHeight;
         _loc6_ = _loc7_ + _loc9_ / 2;
         while(_loc6_ > _loc7_ && _loc6_ < _loc8_ || _loc6_ < _loc7_ && _loc6_ > _loc8_)
         {
            _loc10_ = this.getCrossPoint(_loc5_,_loc6_,_loc3_,_loc4_);
            _loc10_ && _loc11_.push(_loc10_);
            _loc6_ = _loc6_ + _loc9_;
         }
         _loc11_.push(_loc4_);
         var _loc15_:int = param1.x;
         var _loc16_:int = param2.x > param1.x?1:-1;
         var _loc22_:int = 0;
         while(_loc22_ < _loc11_.length - 1)
         {
            _loc18_ = MapGridUtil.getTilePoint(this.tilePixelWidth,this.tilePixelHeight,this.mapPixelWidth,(_loc11_[_loc22_] as Point).x,(_loc11_[_loc22_] as Point).y);
            _loc19_ = MapGridUtil.getTilePoint(this.tilePixelWidth,this.tilePixelHeight,this.mapPixelWidth,(_loc11_[_loc22_ + 1] as Point).x,(_loc11_[_loc22_ + 1] as Point).y);
            _loc20_ = Math.min(_loc18_.y,_loc19_.y);
            _loc21_ = Math.max(_loc18_.y,_loc19_.y);
            if(param2.y > param1.y)
            {
               _loc17_ = _loc20_;
               while(_loc17_ <= _loc21_)
               {
                  _loc12_.push(new Point(_loc15_,_loc17_));
                  _loc17_++;
               }
            }
            else
            {
               _loc17_ = _loc21_;
               while(_loc17_ >= _loc20_)
               {
                  _loc12_.push(new Point(_loc15_,_loc17_));
                  _loc17_--;
               }
            }
            _loc15_ = _loc15_ + _loc16_;
            _loc22_++;
         }
         return _loc12_;
      }
   }
}
