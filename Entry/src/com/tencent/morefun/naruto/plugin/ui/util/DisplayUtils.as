package com.tencent.morefun.naruto.plugin.ui.util
{
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   
   public class DisplayUtils
   {
      
      public static var disableCM:ColorMatrixFilter = new ColorMatrixFilter([0.33,0.33,0.33,0,0,0.33,0.33,0.33,0,0,0.33,0.33,0.33,0,0,0,0,0,1,0]);
      
      public static var textGlowFilter:GlowFilter = new GlowFilter(0,1,2,2,5,1);
       
      public function DisplayUtils()
      {
         super();
         throw new Error(DisplayUtils + " can not be instantiated.");
      }
      
      public static function replaceDisplay(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(param1 == null || param1.parent == null || param2 == null)
         {
            return;
         }
         var _loc3_:DisplayObjectContainer = param1.parent as DisplayObjectContainer;
         var _loc4_:int = _loc3_.getChildIndex(param1);
         param2.x = param1.x;
         param2.y = param1.y;
         _loc3_.removeChild(param1);
         _loc3_.addChildAt(param2,_loc4_);
      }
      
      public static function replaceDisplayWidthSize(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(param1 == null || param1.parent == null || param2 == null)
         {
            return;
         }
         var _loc3_:DisplayObjectContainer = param1.parent as DisplayObjectContainer;
         var _loc4_:int = _loc3_.getChildIndex(param1);
         param2.x = param1.x;
         param2.y = param1.y;
         param2.width = param1.width;
         param2.height = param1.height;
         _loc3_.removeChild(param1);
         _loc3_.addChildAt(param2,_loc4_);
      }
      
      public static function traverseDisplayContainer(param1:DisplayObjectContainer) : Vector.<DisplayObject>
      {
         var _loc2_:Vector.<DisplayObject> = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:uint = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc4_);
            _loc2_.push(_loc3_);
            if(_loc3_ is DisplayObjectContainer)
            {
               _loc2_.push(traverseDisplayContainer(_loc3_ as DisplayObjectContainer));
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public static function dispose(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:* = 0;
         if(param1.hasOwnProperty("dispose"))
         {
            param1["dispose"]();
         }
         while(param1.numChildren)
         {
            _loc4_ = 0;
            while(_loc4_ < param1.numChildren)
            {
               _loc2_ = param1.getChildAt(_loc4_);
               if(_loc2_ != null)
               {
                  break;
               }
               _loc4_++;
            }
            if(_loc2_ == null)
            {
               break;
            }
            _loc3_ = _loc2_ as DisplayObjectContainer;
            if(_loc3_ && _loc3_.numChildren != 0)
            {
               dispose(_loc3_);
            }
            else if(_loc2_.hasOwnProperty("dispose"))
            {
               _loc2_["dispose"]();
            }
            param1.removeChild(_loc2_);
         }
      }
      
      public static function clear(param1:DisplayObject) : void
      {
         var _loc2_:* = 0;
         if(!param1)
         {
            return;
         }
         if(param1 is MovieClip)
         {
            (param1 as MovieClip).stop();
         }
         if(param1 is SimpleButton)
         {
            clear((param1 as SimpleButton).upState);
            clear((param1 as SimpleButton).downState);
            clear((param1 as SimpleButton).overState);
            clear((param1 as SimpleButton).hitTestState);
            (param1 as SimpleButton).upState = null;
            (param1 as SimpleButton).downState = null;
            (param1 as SimpleButton).overState = null;
            (param1 as SimpleButton).hitTestState = null;
         }
         else if(param1 is DisplayObjectContainer)
         {
            _loc2_ = (param1 as DisplayObjectContainer).numChildren - 1;
            while(_loc2_ >= 0)
            {
               clear((param1 as DisplayObjectContainer).getChildAt(_loc2_));
               (param1 as DisplayObjectContainer).removeChildAt(_loc2_);
               _loc2_--;
            }
         }
      }
      
      public static function stop(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObjectContainer = null;
         if(param1.hasOwnProperty("stop"))
         {
            param1["stop"]();
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_ as DisplayObjectContainer;
               if(_loc3_ && _loc3_.numChildren != 0)
               {
                  stop(_loc3_);
               }
               else if(_loc2_.hasOwnProperty("stop"))
               {
                  _loc2_["stop"]();
               }
            }
            _loc4_++;
         }
      }
      
      public static function resume(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObjectContainer = null;
         if(param1.hasOwnProperty("play"))
         {
            param1["play"]();
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_ as DisplayObjectContainer;
               if(_loc3_ && _loc3_.numChildren != 0)
               {
                  resume(_loc3_);
               }
               else if(_loc2_.hasOwnProperty("play"))
               {
                  _loc2_["play"]();
               }
            }
            _loc4_++;
         }
      }
      
      public static function clearBitmap(param1:Bitmap) : void
      {
         if(param1)
         {
            if(param1.bitmapData)
            {
               param1.bitmapData.dispose();
               param1.bitmapData = null;
            }
         }
      }
      
      public static function getStringByteLength(param1:String) : int
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeMultiByte(param1,"GBK");
         return _loc2_.length;
      }
      
      public static function cutStringToByteLength(param1:String, param2:int, param3:Boolean = true) : String
      {
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(getStringByteLength(param1) <= param2)
         {
            _loc4_ = param1;
         }
         else
         {
            _loc4_ = "";
            _loc8_ = param3?param2 - 3:param2;
            _loc5_ = _loc8_;
            _loc6_ = 0;
            while(_loc5_ > 1 && _loc6_ < param1.length - 1)
            {
               _loc7_ = int(_loc5_ / 2);
               if(_loc7_ < 1)
               {
                  _loc7_ = 1;
               }
               _loc4_ = _loc4_ + param1.substr(_loc6_,_loc7_);
               _loc6_ = _loc6_ + _loc7_;
               _loc5_ = _loc8_ - getStringByteLength(_loc4_);
            }
            if(_loc5_ == 1 && _loc6_ < param1.length - 1 && getStringByteLength(param1.charAt(_loc6_)) == 1)
            {
               _loc4_ = _loc4_ + param1.charAt(_loc6_);
            }
            if(param3)
            {
               _loc4_ = _loc4_ + "...";
            }
         }
         return _loc4_;
      }
      
      public static function cutStringToPixelLength(param1:String, param2:int, param3:int, param4:Boolean = true, param5:Boolean = false) : String
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:TextField = null;
         var _loc9_:TextFormat = null;
         var _loc10_:* = 0;
         _loc8_ = new TextField();
         _loc9_ = _loc8_.defaultTextFormat;
         _loc9_.font = "SimSun";
         _loc9_.size = param3;
         _loc9_.bold = param5;
         _loc8_.defaultTextFormat = _loc9_;
         _loc8_.setTextFormat(_loc9_);
         _loc8_.multiline = false;
         _loc8_.autoSize = TextFieldAutoSize.LEFT;
         _loc8_.text = param1;
         if(_loc8_.width <= param2)
         {
            return param1;
         }
         _loc6_ = param4?"...":"";
         _loc10_ = 0;
         _loc8_.text = _loc6_;
         while(_loc8_.width < param2 && _loc10_ < param1.length)
         {
            _loc6_ = _loc8_.text;
            _loc7_ = param1.substring(0,_loc10_ + 1) + (param4?"...":"");
            _loc8_.text = _loc7_;
            _loc10_++;
         }
         return _loc6_;
      }
   }
}
