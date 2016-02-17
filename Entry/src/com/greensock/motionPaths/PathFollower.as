package com.greensock.motionPaths
{
   public class PathFollower
   {
       
      public var target:Object;
      
      public var cachedProgress:Number;
      
      public var cachedNext:com.greensock.motionPaths.PathFollower;
      
      public var cachedPrev:com.greensock.motionPaths.PathFollower;
      
      public var path:com.greensock.motionPaths.MotionPath;
      
      public var autoRotate:Boolean;
      
      public var rotationOffset:Number;
      
      public function PathFollower(param1:Object, param2:Boolean = false, param3:Number = 0)
      {
         super();
         this.target = param1;
         this.autoRotate = param2;
         this.rotationOffset = param3;
         this.cachedProgress = 0;
      }
      
      public function get progress() : Number
      {
         return this.cachedProgress;
      }
      
      public function set progress(param1:Number) : void
      {
         if(param1 > 1)
         {
            var param1:Number = param1 - int(param1);
         }
         else if(param1 < 0)
         {
            param1 = param1 - (int(param1) - 1);
         }
         this.cachedProgress = param1;
         if(this.path)
         {
            this.path.renderObjectAt(this.target,param1,this.autoRotate,this.rotationOffset);
         }
      }
      
      public function autoSetNull() : void
      {
         this.target = null;
         this.cachedNext = null;
         this.cachedPrev = null;
         this.path = null;
      }
   }
}
