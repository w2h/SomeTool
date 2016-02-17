package com.tencent.morefun.naruto.util
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getQualifiedClassName;
   import flash.display.MovieClip;
   
   public class describeDisplayObject
   {
       
      public function describeDisplayObject()
      {
         super();
      }
      
      public static function printDisplayTree(param1:DisplayObject) : String
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:String = collectTarget(param1);
         if(param1 is DisplayObjectContainer)
         {
            _loc2_ = _loc2_ + collectContainer(param1 as DisplayObjectContainer);
         }
         return _loc2_;
      }
      
      private static function collectTarget(param1:DisplayObject) : String
      {
         var _loc2_:String = getQualifiedClassName(param1) + getMemoryAddress(param1);
         if(param1 is DisplayObjectContainer)
         {
            _loc2_ = _loc2_ + ("|" + (param1 as DisplayObjectContainer).numChildren);
            if(param1 is MovieClip)
            {
               _loc2_ = _loc2_ + ("-f" + (param1 as MovieClip).totalFrames + "@" + (param1 as MovieClip).currentFrame);
            }
         }
         return "[" + _loc2_ + "]" + param1.name;
      }
      
      private static function getMemoryAddress(param1:Object) : String
      {
         var target:Object = param1;
         try
         {
            FakeClass(target);
         }
         catch(err:Error)
         {
            return err.message.match(new RegExp("@[0-f]+","i"))[0];
         }
         return "";
      }
      
      private static function collectContainer(param1:DisplayObjectContainer, param2:String = "") : String
      {
         var _loc5_:DisplayObject = null;
         var _loc4_:String = "";
         var _loc6_:int = 0;
         while(_loc6_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc6_);
            _loc4_ = _loc4_ + ("\r\n" + param2 + (_loc6_ < param1.numChildren - 1?"├":"└") + "──" + collectTarget(_loc5_));
            if(_loc5_ is DisplayObjectContainer)
            {
               _loc4_ = _loc4_ + arguments.callee.call(null,_loc5_ as DisplayObjectContainer,param2 + (_loc6_ < param1.numChildren - 1?"│":" ") + "  ");
            }
            _loc6_++;
         }
         return _loc4_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}

class FakeClass
{
    
   function FakeClass()
   {
      super();
   }
   
   public function autoSetNull() : void
   {
   }
}
