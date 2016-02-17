package com.tencent.morefun.naruto.util
{
   import flash.display.InteractiveObject;
   import flash.events.MouseEvent;
   import flash.display.MovieClip;
   import flash.filters.ColorMatrixFilter;
   
   public class GrayUtils
   {
       
      public function GrayUtils()
      {
         super();
         throw new Error("GrayUtils can not be instantiated.");
      }
      
      public static function enableButton(param1:InteractiveObject, param2:Function = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param2 != null && !param1.hasEventListener(MouseEvent.CLICK))
         {
            param1.addEventListener(MouseEvent.CLICK,param2);
         }
         param1.filters = [];
         if("mouseEnabled" in param1)
         {
            param1["mouseEnabled"] = true;
         }
         if("enabled" in param1)
         {
            param1["enabled"] = true;
         }
      }
      
      public static function disableButton(param1:InteractiveObject, param2:Function = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param2 != null && param1.hasEventListener(MouseEvent.CLICK))
         {
            param1.removeEventListener(MouseEvent.CLICK,param2);
         }
         param1.filters = getGrayFilter();
         if("mouseEnabled" in param1)
         {
            param1["mouseEnabled"] = false;
         }
         if("enabled" in param1)
         {
            param1["enabled"] = false;
         }
      }
      
      public static function enableMovieClip(param1:MovieClip, param2:Function = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param2 != null && !param1.hasEventListener(MouseEvent.CLICK))
         {
            param1.addEventListener(MouseEvent.CLICK,param2);
         }
         param1.filters = [];
         param1.mouseEnabled = true;
      }
      
      public static function disableMovieClip(param1:MovieClip, param2:Function = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param2 != null && param1.hasEventListener(MouseEvent.CLICK))
         {
            param1.removeEventListener(MouseEvent.CLICK,param2);
         }
         param1.filters = getGrayFilter();
         param1.mouseEnabled = false;
      }
      
      public static function getGrayFilter() : Array
      {
         return [new ColorMatrixFilter([0.34317,0.57893,0.0779,0,0,0.29317,0.62893,0.0779,0,0,0.29317,0.57893,0.1279,0,0,0,0,0,1,0])];
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
