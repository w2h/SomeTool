package base
{
   public class BinaryHeap
   {
       
      private var data:Vector.<base.Node>;
      
      public function BinaryHeap()
      {
         super();
         this.data = new Vector.<Node>();
         this.data[0] = null;
      }
      
      public function get length() : int
      {
         return this.data.length - 1;
      }
      
      public function push(param1:base.Node) : void
      {
         param1.indexInOpen = this.data.push(param1) - 1;
         this.modifyIndex(param1.indexInOpen);
      }
      
      public function modify(param1:base.Node) : void
      {
         if(param1.indexInOpen > 0)
         {
            this.modifyIndex(param1.indexInOpen);
         }
      }
      
      private function modifyIndex(param1:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:base.Node = null;
         var _loc5_:* = 0;
         var _loc2_:int = param1;
         while(_loc2_ > 1)
         {
            _loc3_ = int(_loc2_ / 2);
            if(this.data[_loc2_].f < this.data[_loc3_].f)
            {
               _loc4_ = this.data[_loc2_];
               this.data[_loc2_] = this.data[_loc3_];
               this.data[_loc3_] = _loc4_;
               _loc5_ = this.data[_loc2_].indexInOpen;
               this.data[_loc2_].indexInOpen = this.data[_loc3_].indexInOpen;
               this.data[_loc3_].indexInOpen = _loc5_;
               _loc2_ = _loc3_;
               continue;
            }
            break;
         }
      }
      
      public function shift() : base.Node
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:base.Node = null;
         var _loc6_:* = 0;
         if(this.data.length == 1)
         {
            return null;
         }
         if(this.data.length == 2)
         {
            return this.data.pop();
         }
         var _loc1_:base.Node = this.data[1];
         var _loc2_:int = 1;
         this.data[1] = this.data.pop();
         this.data[1].indexInOpen = 1;
         while(true)
         {
            _loc3_ = _loc2_;
            _loc4_ = _loc2_ * 2;
            if(_loc4_ < this.data.length)
            {
               if(this.data[_loc4_].f < this.data[_loc2_].f)
               {
                  _loc2_ = _loc4_;
               }
               if(_loc4_ + 1 < this.data.length && this.data[_loc4_ + 1].f < this.data[_loc2_].f)
               {
                  _loc2_ = _loc4_ + 1;
               }
            }
            if(_loc2_ != _loc3_)
            {
               _loc5_ = this.data[_loc2_];
               this.data[_loc2_] = this.data[_loc3_];
               this.data[_loc3_] = _loc5_;
               _loc6_ = this.data[_loc2_].indexInOpen;
               this.data[_loc2_].indexInOpen = this.data[_loc3_].indexInOpen;
               this.data[_loc3_].indexInOpen = _loc6_;
               continue;
            }
            break;
         }
         _loc1_.indexInOpen = -1;
         return _loc1_ as Node;
      }
      
      public function clear() : void
      {
         this.data.length = 0;
         this.data[0] = null;
      }
   }
}
