package com.tencent.morefun.naruto.plugin.exui.uihelp
{
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   
   public interface IUIHelpTips
   {
       
      function get id() : String;
      
      function get view() : DisplayObject;
      
      function get direction() : uint;
      
      function get relatedObject() : DisplayObject;
      
      function get relatedBounds() : Rectangle;
      
      function get enabled() : Boolean;
      
      function get borderEnabled() : Boolean;
      
      function get offset() : Point;
      
      function dispose() : void;
   }
}
