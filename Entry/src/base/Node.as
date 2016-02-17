package base
{
   public class Node
   {
       
      public var x:int;
      
      public var y:int;
      
      public var indexInOpen:int;
      
      public var isInClose:Boolean;
      
      public var g:int;
      
      public var h:int;
      
      public var f:int;
      
      public var parentNode:base.Node;
      
      public function Node(param1:int, param2:int)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.indexInOpen = -1;
         this.isInClose = false;
         this.g = 0;
         this.h = 0;
         this.f = 0;
         this.parentNode = null;
      }
      
      public function reset() : void
      {
         this.indexInOpen = -1;
         this.isInClose = false;
         this.g = 0;
         this.h = 0;
         this.f = 0;
         this.parentNode = null;
      }
   }
}
