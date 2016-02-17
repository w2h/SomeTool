package com.tencent.morefun.naruto.util
{
   import flash.geom.ColorTransform;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.DisplayObject;
   import com.tencent.morefun.naruto.geom.Tint;
   import com.tencent.morefun.naruto.geom.HSL;
   import com.tencent.morefun.naruto.geom.ColorMatrix;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.display.Stage;
   
   public class DisplayUtil
   {
      
      private static const nullCT:ColorTransform = new ColorTransform();
       
      public function DisplayUtil()
      {
         super();
      }
      
      public static function stopMovieClip(param1:DisplayObjectContainer, param2:Array = null) : void
      {
         if(param1 != null)
         {
            if(param2)
            {
               stopMovieClipExcept(param1,param2);
               return;
            }
            stopMovieClipNoExcept(param1);
         }
      }
      
      private static function stopMovieClipExcept(param1:DisplayObjectContainer, param2:Array) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:DisplayObjectContainer = null;
         if(param1 is MovieClip)
         {
            MovieClip(param1).stop();
         }
         _loc4_ = param1.numChildren;
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc5_ = param1.getChildAt(_loc3_) as DisplayObjectContainer;
            if(_loc5_ && param2.indexOf(_loc5_) == -1)
            {
               stopMovieClipExcept(_loc5_,param2);
            }
            _loc3_++;
         }
      }
      
      private static function stopMovieClipNoExcept(param1:DisplayObjectContainer) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:DisplayObjectContainer = null;
         if(param1 is MovieClip)
         {
            MovieClip(param1).stop();
         }
         _loc3_ = param1.numChildren;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.getChildAt(_loc2_) as DisplayObjectContainer;
            if(_loc4_)
            {
               stopMovieClipNoExcept(_loc4_);
            }
            _loc2_++;
         }
      }
      
      public static function startMovieClip(param1:DisplayObjectContainer, param2:Array = null) : void
      {
         if(param1 != null)
         {
            if(param2)
            {
               startMovieClipExcept(param1,param2);
               return;
            }
            startMovieClipNoExcept(param1);
         }
      }
      
      private static function startMovieClipNoExcept(param1:DisplayObjectContainer) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:DisplayObjectContainer = null;
         if(param1 is MovieClip)
         {
            MovieClip(param1).gotoAndPlay(1);
         }
         _loc3_ = param1.numChildren;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.getChildAt(_loc2_) as DisplayObjectContainer;
            if(_loc4_)
            {
               startMovieClipNoExcept(_loc4_);
            }
            _loc2_++;
         }
      }
      
      private static function startMovieClipExcept(param1:DisplayObjectContainer, param2:Array) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:DisplayObjectContainer = null;
         if(param1 is MovieClip)
         {
            MovieClip(param1).gotoAndPlay(1);
         }
         _loc4_ = param1.numChildren;
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc5_ = param1.getChildAt(_loc3_) as DisplayObjectContainer;
            if(_loc5_ && param2.indexOf(_loc5_) == -1)
            {
               startMovieClipExcept(_loc5_,param2);
            }
            _loc3_++;
         }
      }
      
      public static function removeChildren(param1:DisplayObjectContainer) : void
      {
         var _loc2_:* = 0;
         if(param1 != null)
         {
            _loc2_ = param1.numChildren;
            while(_loc2_ > 0)
            {
               param1.removeChildAt(0);
               _loc2_--;
            }
         }
      }
      
      public static function adjustColor(param1:DisplayObject, param2:uint) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc3_:Tint = new Tint(param2);
         var _loc4_:HSL = _loc3_.toHSL();
         _loc4_.l = calL(_loc4_.l);
         _loc4_.s = calS(_loc4_.s);
         _loc3_ = _loc4_.toTint();
         var _loc5_:ColorMatrix = new ColorMatrix();
         _loc5_.adjustColor(0,0,-100,0);
         param1.filters = [new ColorMatrixFilter(_loc5_)];
         param1.transform.colorTransform = ColorParser.parseToColorTransform(_loc3_.toColor(),8421504);
      }
      
      private static function calS(param1:Number) : Number
      {
         var _loc2_:* = NaN;
         var _loc3_:Number = (param1 - 50) / 50;
         _loc2_ = Math.sin(_loc3_ * Math.PI / 2);
         return _loc2_ * 40 + 45;
      }
      
      private static function calL(param1:Number) : Number
      {
         var _loc2_:* = NaN;
         var _loc3_:Number = (param1 - 50) / 50;
         _loc2_ = Math.sin(_loc3_ * Math.PI / 2);
         return _loc2_ * 30 + 45;
      }
      
      public static function strokeFilter(param1:uint = 16777011, param2:Number = 1, param3:Number = 6, param4:Number = 6, param5:Number = 10) : GlowFilter
      {
         return new GlowFilter(param1,param2,param3,param4,param5);
      }
      
      public static function resetColor(param1:DisplayObject) : void
      {
         param1.filters = [];
         param1.transform.colorTransform = nullCT;
      }
      
      public static function isAllParentVisibleTrue(param1:DisplayObject, param2:Boolean = false) : Boolean
      {
         var _loc3_:DisplayObject = param2?param1:param1.parent;
         while(true)
         {
            if(true)
            {
               if(_loc3_.visible == false)
               {
                  break;
               }
               if(!(_loc3_ == null || _loc3_ is Stage))
               {
                  _loc3_ = _loc3_.parent;
                  continue;
               }
            }
            return true;
         }
         return false;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
