package base
{
   import map.model.MapInfo;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import com.tencent.morefun.naruto.model.event.ModelEvent;
   import map.def.MapModelKeyDef;
   
   public class AStarPathFinder
   {
       
      private const COST_HORIZONTAL:int = 10;
      
      private const COST_VERTICAL:int = 10;
      
      private const COST_DIAGONAL:int = 14;
      
      private const COST_TURN:int = 10;
      
      private var currentUseMap:MapInfo;
      
      private var xMapStart:int;
      
      private var yMapStart:int;
      
      private var wMap:int;
      
      private var hMap:int;
      
      private var map:Array;
      
      private var openList:base.BinaryHeap;
      
      private var isFinded:Boolean = false;
      
      private var mapInfo:MapInfo;
      
      public var runTimeInMs:int = 0;
      
      public function AStarPathFinder(param1:MapInfo)
      {
         super();
         this.currentUseMap = param1;
         this.xMapStart = 0;
         this.yMapStart = 0;
         this.hMap = param1.mapTileHeight;
         this.wMap = param1.mapTileWidth;
         this.mapInfo = param1;
         this.mapInfo.addEventListener(ModelEvent.UPDATE,this.onMapInfoUpdate);
      }
      
      public function find(param1:Point, param2:Point) : Array
      {
         var _loc5_:Node = null;
         var _loc6_:Node = null;
         var _loc7_:Node = null;
         var _loc8_:Node = null;
         var _loc10_:Array = null;
         var _loc11_:Node = null;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc3_:int = getTimer();
         var _loc4_:int = 0;
         if(!this.mapInfo.getWalkable(param1.x,param1.y))
         {
            return [];
         }
         this.initList();
         _loc5_ = this.getNode(param1.x,param1.y);
         _loc6_ = this.getNode(param2.x,param2.y);
         _loc8_ = this.getSignNode(_loc6_.x,_loc6_.y);
         this.isFinded = false;
         this.openList.push(_loc5_);
         while(this.openList.length > 0)
         {
            do
            {
               _loc5_ = this.openList.shift();
               _loc7_ = this.getSignNode(_loc5_.x,_loc5_.y);
            }
            while(_loc7_.isInClose && this.openList.length > 0);
            
            if(_loc7_.isInClose)
            {
               break;
            }
            _loc5_.isInClose = true;
            _loc7_.isInClose = true;
            if(_loc7_.x == _loc8_.x && _loc7_.y == _loc8_.y)
            {
               this.isFinded = true;
               break;
            }
            _loc10_ = this.getAroundsNode(_loc5_.x,_loc5_.y);
            _loc4_++;
            for each(_loc11_ in _loc10_)
            {
               _loc12_ = this.getGValue(_loc5_,_loc11_);
               _loc13_ = this.getHValue(_loc5_,_loc11_,_loc6_);
               if(_loc11_.indexInOpen != -1)
               {
                  if(_loc12_ + _loc13_ < _loc11_.f)
                  {
                     _loc11_.g = _loc12_;
                     _loc11_.h = _loc13_;
                     _loc11_.f = _loc12_ + _loc13_;
                     _loc11_.parentNode = _loc5_;
                     this.openList.modify(_loc11_);
                  }
               }
               else
               {
                  _loc11_.g = _loc12_;
                  _loc11_.h = _loc13_;
                  _loc11_.f = _loc12_ + _loc13_;
                  _loc11_.parentNode = _loc5_;
                  this.openList.push(_loc11_);
               }
            }
         }
         var _loc9_:Array = this.isFinded?this.createPath(param1.x,param1.y,_loc5_,param2):null;
         this.runTimeInMs = getTimer() - _loc3_;
         this.destroyLists();
         return _loc9_;
      }
      
      private function createPath(param1:int, param2:int, param3:Node, param4:Point) : Array
      {
         var _loc5_:Array = new Array();
         var _loc6_:Node = param3;
         while(_loc6_.x != param1 || _loc6_.y != param2)
         {
            _loc5_.unshift(new Point(_loc6_.x,_loc6_.y));
            _loc6_ = _loc6_.parentNode;
         }
         _loc5_.unshift(new Point(_loc6_.x,_loc6_.y));
         if(!param4.equals(_loc5_[_loc5_.length - 1]))
         {
            _loc5_.push(param4);
         }
         return _loc5_;
      }
      
      private function getGValue(param1:Node, param2:Node) : int
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:int = 0;
         _loc4_ = (param1.x - param2.x) * this.COST_HORIZONTAL;
         _loc5_ = (param1.y - param2.y) * this.COST_VERTICAL;
         _loc3_ = param1.g + Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         return _loc3_;
      }
      
      private function getHValue(param1:Node, param2:Node, param3:Node) : int
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc5_ = (param3.x - param2.x) * this.COST_HORIZONTAL;
         _loc6_ = (param3.y - param2.y) * this.COST_VERTICAL;
         _loc4_ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         return _loc4_;
      }
      
      private function getAroundsNode(param1:int, param2:int) : Array
      {
         var _loc4_:Node = null;
         var _loc5_:Node = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Point = null;
         var _loc12_:* = 0;
         var _loc3_:Array = new Array();
         if(this.mapInfo.getIsSign(param1,param2))
         {
            _loc6_ = param1;
            _loc7_ = param2;
         }
         else
         {
            _loc10_ = this.mapInfo.getSign(param1,param2);
            _loc6_ = _loc10_.x;
            _loc7_ = _loc10_.y;
         }
         _loc10_ = this.mapInfo.getSign(_loc6_,_loc7_);
         _loc8_ = _loc10_.x;
         _loc9_ = _loc10_.y;
         var _loc11_:int = _loc6_ - 1;
         while(_loc11_ <= _loc6_ + _loc8_)
         {
            _loc12_ = _loc7_ - 1;
            while(_loc12_ <= _loc7_ + _loc9_)
            {
               if(this.isWalkable(_loc11_,_loc12_))
               {
                  _loc4_ = this.getNode(_loc11_,_loc12_);
                  _loc5_ = this.getSignNode(_loc11_,_loc12_);
                  if(!_loc5_.isInClose)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
               _loc12_++;
            }
            _loc11_ = _loc11_ + (_loc8_ + 1);
         }
         _loc12_ = _loc7_ - 1;
         while(_loc12_ <= _loc7_ + _loc9_)
         {
            _loc11_ = _loc6_;
            while(_loc11_ < _loc6_ + _loc8_)
            {
               if(this.isWalkable(_loc11_,_loc12_))
               {
                  _loc4_ = this.getNode(_loc11_,_loc12_);
                  _loc5_ = this.getSignNode(_loc11_,_loc12_);
                  if(!_loc5_.isInClose)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
               _loc11_++;
            }
            _loc12_ = _loc12_ + (_loc9_ + 1);
         }
         return _loc3_;
      }
      
      private function isWalkable(param1:int, param2:int) : Boolean
      {
         if(param1 < this.xMapStart || param1 >= this.wMap)
         {
            return false;
         }
         if(param2 < this.yMapStart || param2 >= this.hMap)
         {
            return false;
         }
         return this.currentUseMap.getWalkable(param1,param2);
      }
      
      private function initList() : void
      {
         this.openList = this.openList || new base.BinaryHeap();
         this.map = this.map || new Array();
      }
      
      private function onMapInfoUpdate(param1:ModelEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function destroyLists() : void
      {
         this.openList.clear();
         this.map.length = 0;
      }
      
      private function getNode(param1:int, param2:int) : Node
      {
         if(this.map[param2] == undefined)
         {
            this.map[param2] = new Array();
         }
         if(this.map[param2][param1] == undefined)
         {
            this.map[param2][param1] = new Node(param1,param2);
         }
         return this.map[param2][param1] as Node;
      }
      
      private function turned(param1:Node, param2:Node, param3:Node) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc4_:int = param2.y - param1.y;
         var _loc5_:int = param2.x - param1.x;
         var _loc6_:int = param3.y - param2.y;
         var _loc7_:int = param3.x - param2.x;
         if(Math.round(Math.atan2(_loc4_,_loc5_) * 2 / Math.PI) == Math.round(Math.atan2(_loc6_,_loc7_) * 2 / Math.PI))
         {
            return false;
         }
         return true;
      }
      
      private function getStraightPoint(param1:Node, param2:Node, param3:Point) : int
      {
         param3.setTo(param2.x + (param2.x - param1.x),param2.y + (param2.y - param1.y));
         if(param1.x == param2.x || param1.y == param2.y)
         {
            return this.COST_HORIZONTAL;
         }
         return this.COST_VERTICAL;
      }
      
      private function getSignNode(param1:int, param2:int) : Node
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Point = null;
         if(this.mapInfo.getIsSign(param1,param2))
         {
            _loc3_ = param1;
            _loc4_ = param2;
         }
         else
         {
            _loc5_ = this.mapInfo.getSign(param1,param2);
            _loc3_ = _loc5_.x;
            _loc4_ = _loc5_.y;
         }
         return this.getNode(_loc3_,_loc4_);
      }
      
      private function cutPathPoint(param1:Array) : Array
      {
         var _loc3_:Point = null;
         var _loc4_:* = 0;
         var _loc2_:Array = new Array();
         if(param1.length == 0)
         {
            return _loc2_;
         }
         _loc2_[0] = param1[0];
         while(_loc2_[_loc2_.length - 1] != param1[param1.length - 1])
         {
            _loc3_ = _loc2_[_loc2_.length - 1];
            _loc4_ = param1.length - 1;
            while(_loc4_ >= 0)
            {
               if(this.canGoStraight(_loc3_,param1[_loc4_]) || _loc3_ == param1[_loc4_ - 1])
               {
                  _loc2_.push(param1[_loc4_]);
                  break;
               }
               _loc4_--;
            }
         }
         return _loc2_;
      }
      
      private function canGoStraight(param1:Point, param2:Point) : Boolean
      {
         var _loc4_:Point = null;
         var _loc3_:Array = this.mapInfo.passedTile2(param1,param2);
         for each(_loc4_ in _loc3_)
         {
            if(this.mapInfo.getWalkable(_loc4_.x,_loc4_.y) == false)
            {
               return false;
            }
         }
         return true;
      }
      
      public function shortenPath(param1:Array, param2:int) : Array
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc11_:Point = null;
         var _loc12_:Point = null;
         var _loc13_:Point = null;
         var _loc14_:* = 0;
         var _loc15_:Point = null;
         if(param2 <= 0 || param1.length < 2)
         {
            return param1;
         }
         _loc9_ = new Array();
         for each(_loc15_ in param1)
         {
            _loc9_.push(_loc15_);
         }
         _loc7_ = param2;
         _loc14_ = param1.length - 1;
         while(_loc14_ > 0)
         {
            _loc4_ = param1[_loc14_];
            _loc6_ = MapGridUtil.getPixelPoint(this.mapInfo.tilePixelWidth,this.mapInfo.tilePixelHeight,this.mapInfo.mapPixelWidth,_loc4_.x,_loc4_.y);
            _loc3_ = param1[_loc14_ - 1];
            _loc5_ = MapGridUtil.getPixelPoint(this.mapInfo.tilePixelWidth,this.mapInfo.tilePixelHeight,this.mapInfo.mapPixelWidth,_loc3_.x,_loc3_.y);
            _loc8_ = Point.distance(_loc5_,_loc6_);
            if(_loc8_ < _loc7_)
            {
               _loc7_ = _loc7_ - _loc8_;
               _loc9_.pop();
            }
            else
            {
               if(_loc8_ == _loc7_)
               {
                  _loc9_.pop();
                  return _loc9_;
               }
               if(_loc8_ > _loc7_)
               {
                  _loc9_.pop();
                  _loc10_ = this.mapInfo.passedTile2(_loc4_,_loc3_);
                  for each(_loc15_ in _loc10_)
                  {
                     _loc11_ = MapGridUtil.getPixelPoint(this.mapInfo.tilePixelWidth,this.mapInfo.tilePixelHeight,this.mapInfo.mapPixelWidth,_loc15_.x,_loc15_.y);
                     if(this.mapInfo.getWalkable(_loc15_.x,_loc15_.y) && Point.distance(_loc6_,_loc11_) >= _loc7_)
                     {
                        if(!_loc12_ || Point.distance(_loc6_,_loc11_) - _loc7_ < _loc7_ - Point.distance(_loc6_,_loc13_))
                        {
                           _loc9_.push(_loc15_);
                        }
                        else
                        {
                           _loc9_.push(_loc12_);
                        }
                        return _loc9_;
                     }
                     if(this.mapInfo.getWalkable(_loc15_.x,_loc15_.y))
                     {
                        _loc12_ = _loc15_.clone();
                        _loc13_ = _loc11_.clone();
                     }
                  }
               }
            }
            _loc14_--;
         }
         return _loc9_;
      }
   }
}
