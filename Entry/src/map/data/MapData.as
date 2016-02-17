package map.data
{
   import flash.geom.Point;
   import base.MapGridUtil;
   import flash.utils.ByteArray;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.filters.GlowFilter;
   
   public class MapData
   {
      
      private static var pointPool:Vector.<Point> = new Vector.<Point>();
      
      private static var pointPoolIndex:int = -1;
       
      public var mapTileWidth:int;
      
      public var mapTileHeight:int;
      
      public var mapPixelWidth:int;
      
      public var mapPixelHeight:int;
      
      public var imgPixelWidth:int;
      
      public var imgPixelHeight:int;
      
      public var tilePixelWidth:int;
      
      public var tilePixelHeight:int;
      
      public var walkableArray:Vector.<Vector.<Boolean>>;
      
      public var isSign:Vector.<Vector.<Boolean>>;
      
      public var sign:Vector.<Vector.<Point>>;
      
      public var block:Vector.<Vector.<int>>;
      
      private var _centerPoint:Point;
      
      private var relativityCenterPoint:Point;
      
      public function MapData()
      {
         this._centerPoint = new Point();
         this.relativityCenterPoint = new Point();
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
      
      public function getWalkable(param1:int, param2:int) : Boolean
      {
         return this.walkableArray?this.walkableArray[param2][param1]:false;
      }
      
      public function getIsSign(param1:int, param2:int) : Boolean
      {
         return this.isSign?this.isSign[param2][param1]:false;
      }
      
      public function getSign(param1:int, param2:int) : Point
      {
         return this.sign?this.sign[param2][param1]:null;
      }
      
      public function getBlock(param1:int, param2:int) : int
      {
         var _loc3_:Point = null;
         if(this.getWalkable(param1,param2))
         {
            if(this.getIsSign(param1,param2))
            {
               return this.block[param2][param1];
            }
            _loc3_ = this.getSign(param1,param2);
            return this.block[_loc3_.y][_loc3_.x];
         }
         return -1;
      }
      
      public function setCenter(param1:int, param2:int) : void
      {
         if(this._centerPoint.x == param1 && this._centerPoint.y == param2)
         {
            return;
         }
         this._centerPoint.x = param1;
         this._centerPoint.y = param2;
      }
      
      public function getCenter() : Point
      {
         return this._centerPoint;
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
         this.walkableArray = new Vector.<Vector.<Boolean>>();
         this.isSign = new Vector.<Vector.<Boolean>>();
         this.sign = new Vector.<Vector.<Point>>();
         this.block = new Vector.<Vector.<int>>();
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
            return newPoint(param3.x,param1 * param3.x + param2);
         }
         _loc7_ = (_loc6_ - param2) / (param1 - _loc5_);
         _loc8_ = param1 * _loc7_ + param2;
         return newPoint(_loc7_,_loc8_);
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
                  _loc12_.push(newPoint(_loc15_,_loc17_));
                  _loc17_++;
               }
            }
            else
            {
               _loc17_ = _loc21_;
               while(_loc17_ >= _loc20_)
               {
                  _loc12_.push(newPoint(_loc15_,_loc17_));
                  _loc17_--;
               }
            }
            _loc15_ = _loc15_ + _loc16_;
            _loc22_++;
         }
         _loc11_ = null;
         _loc13_ = null;
         return _loc12_;
      }
      
      public function setData(param1:ByteArray) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         param1.position = 0;
         this.reset();
         this.mapPixelWidth = param1.readInt();
         this.mapPixelHeight = param1.readInt();
         this.imgPixelWidth = param1.readInt();
         this.imgPixelHeight = param1.readInt();
         this.mapTileWidth = param1.readShort();
         this.mapTileHeight = param1.readShort();
         this.tilePixelWidth = param1.readShort();
         this.tilePixelHeight = param1.readShort();
         this.walkableArray.length = this.mapTileHeight;
         this.isSign.length = this.mapTileHeight;
         this.sign.length = this.mapTileHeight;
         this.block.length = this.mapTileHeight;
         var _loc2_:int = 0;
         while(_loc2_ < this.mapTileHeight)
         {
            this.walkableArray[_loc2_] = new Vector.<Boolean>();
            this.isSign[_loc2_] = new Vector.<Boolean>();
            this.sign[_loc2_] = new Vector.<Point>();
            this.block[_loc2_] = new Vector.<int>();
            this.walkableArray[_loc2_].length = this.mapTileWidth;
            this.isSign[_loc2_].length = this.mapTileWidth;
            this.sign[_loc2_].length = this.mapTileWidth;
            this.block[_loc2_].length = this.mapTileWidth;
            _loc2_++;
         }
         while(param1.bytesAvailable > 0)
         {
            _loc3_ = param1.readInt();
            _loc4_ = param1.readInt();
            this.isSign[_loc4_][_loc3_] = param1.readBoolean();
            this.sign[_loc4_][_loc3_] = new Point(param1.readInt(),param1.readInt());
            this.walkableArray[_loc4_][_loc3_] = true;
            this.isSign[_loc4_][_loc3_] == true && (this.block[_loc4_][_loc3_] = param1.readInt());
         }
      }
      
      public function drawMiniMap() : Bitmap
      {
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         var _loc1_:int = Math.sqrt(this.tilePixelWidth * this.tilePixelWidth + this.tilePixelHeight * this.tilePixelHeight) / 2;
         var _loc2_:Number = this.tilePixelHeight / this.tilePixelWidth;
         var _loc3_:Number = this.tilePixelHeight / 2 / _loc1_;
         var _loc4_:Number = this.tilePixelWidth / 2 / _loc1_;
         var _loc5_:int = Math.min(this.tilePixelWidth,this.tilePixelHeight);
         var _loc6_:int = int(this.mapPixelWidth / _loc5_);
         var _loc7_:int = int(this.mapPixelHeight / _loc5_);
         var _loc8_:BitmapData = new BitmapData(_loc6_,_loc7_,true,0);
         var _loc9_:int = 0;
         while(_loc9_ < _loc7_)
         {
            _loc12_ = 0;
            while(_loc12_ < _loc6_)
            {
               _loc13_ = _loc12_ * _loc5_;
               _loc14_ = _loc9_ * _loc5_;
               _loc15_ = (_loc14_ + _loc2_ * this.mapPixelWidth / 2) / _loc3_;
               _loc16_ = (this.mapPixelWidth / 2 - _loc13_) / _loc4_;
               _loc17_ = (_loc15_ + _loc16_) / 2 / _loc1_;
               _loc18_ = (_loc15_ - _loc16_) / 2 / _loc1_;
               if(this.getWalkable(_loc18_,_loc17_))
               {
                  _loc8_.setPixel32(_loc12_,_loc9_,4.03393331E9);
               }
               _loc12_++;
            }
            _loc9_++;
         }
         var _loc10_:Bitmap = new Bitmap(_loc8_,PixelSnapping.AUTO,true);
         _loc10_.alpha = 0.6;
         var _loc11_:Array = [];
         _loc11_.push(new GlowFilter(4443098,1,12,12,3,1,true));
         _loc11_.push(new GlowFilter(16777215,1,4,4,12));
         _loc11_.push(new GlowFilter(0,0.3,6,6,6));
         _loc10_.filters = _loc11_;
         return _loc10_;
      }
   }
}
