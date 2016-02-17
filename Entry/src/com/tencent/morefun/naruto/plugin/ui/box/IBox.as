package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   
   public interface IBox
   {
       
      function get tween() : Boolean;
      
      function get background() : DisplayObject;
      
      function get content() : DisplayObjectContainer;
      
      function get modal() : Boolean;
      
      function get modalColor() : int;
      
      function set modalColor(param1:int) : void;
      
      function get modalAlpha() : Number;
      
      function set modalAlpha(param1:Number) : void;
      
      function get location() : int;
      
      function get locationOffset() : Point;
      
      function get name() : String;
      
      function get data() : Object;
      
      function set data(param1:Object) : void;
      
      function get enabled() : Boolean;
      
      function set enabled(param1:Boolean) : void;
      
      function set isShow(param1:Boolean) : void;
      
      function get isShow() : Boolean;
      
      function set enterBattleClose(param1:Boolean) : void;
      
      function get enterBattleClose() : Boolean;
      
      function get modelWidth() : Number;
      
      function get modelHeight() : Number;
      
      function get disableEsc() : Boolean;
      
      function show(param1:String = null) : IBox;
      
      function close() : void;
      
      function onShow() : void;
      
      function onHide() : void;
      
      function destroy() : void;
   }
}
