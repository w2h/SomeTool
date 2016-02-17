package map.data
{
   import flash.display.Bitmap;
   
   public class Tiles
   {
       
      public var walkable:Boolean;
      
      public var x:int;
      
      public var y:int;
      
      public var image:Bitmap;
      
      public var tileType:int;
      
      public var relativePath:String;
      
      private var walkableOwners:Array;
      
      private var shadowOwners:Array;
      
      public function Tiles(param1:int, param2:int, param3:Boolean)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.walkable = param3;
      }
      
      public function addWalkableOwner(param1:int) : void
      {
         var _loc2_:* = 0;
         if(this.walkableOwners == null)
         {
            this.walkableOwners = new Array();
         }
         for each(_loc2_ in this.walkableOwners)
         {
            if(_loc2_ == param1)
            {
               return;
            }
         }
         this.walkableOwners.push(param1);
      }
      
      public function delWalkableOwner(param1:int) : void
      {
         if(this.walkableOwners == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.walkableOwners.length)
         {
            if(this.walkableOwners[_loc2_] == param1)
            {
               this.walkableOwners.splice(_loc2_,1);
            }
            _loc2_++;
         }
      }
      
      public function getWalkableOwners() : Array
      {
         return this.walkableOwners;
      }
      
      public function addShadowOwner(param1:int) : void
      {
         var _loc2_:* = 0;
         if(this.shadowOwners == null)
         {
            this.shadowOwners = new Array();
         }
         for each(_loc2_ in this.shadowOwners)
         {
            if(_loc2_ == param1)
            {
               return;
            }
         }
         this.shadowOwners.push(param1);
      }
      
      public function delShadowOwner(param1:int) : void
      {
         if(this.shadowOwners == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.shadowOwners.length)
         {
            if(this.shadowOwners[_loc2_] == param1)
            {
               this.shadowOwners.splice(_loc2_,1);
            }
            _loc2_++;
         }
      }
      
      public function getShadowOwners() : Array
      {
         return this.shadowOwners;
      }
   }
}
