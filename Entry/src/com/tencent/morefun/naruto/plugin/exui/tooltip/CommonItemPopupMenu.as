package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import flash.display.InteractiveObject;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import ui.plugin.rank.PopupMenuUI;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.events.TextEvent;
   
   public class CommonItemPopupMenu extends Sprite
   {
      
      private static var mData:Array;
      
      private static var bingdingInfoMap:Dictionary = new Dictionary();
      
      private static var instance:com.tencent.morefun.naruto.plugin.exui.tooltip.CommonItemPopupMenu;
       
      private var _view:PopupMenuUI;
      
      public function CommonItemPopupMenu()
      {
         super();
         this._view = new PopupMenuUI();
         this.addChild(this._view);
         this._view.content.addEventListener(TextEvent.LINK,this.linkClickHandler);
         LayerManager.singleton.stage.addEventListener(MouseEvent.DOUBLE_CLICK,this.stageClickHandler);
         LayerManager.singleton.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.wheelHandler);
         LayerManager.singleton.stage.addEventListener(MouseEvent.CLICK,this.stageClickHandler,false,int.MIN_VALUE);
      }
      
      public static function get singleton() : com.tencent.morefun.naruto.plugin.exui.tooltip.CommonItemPopupMenu
      {
         if(instance == null)
         {
            instance = new com.tencent.morefun.naruto.plugin.exui.tooltip.CommonItemPopupMenu();
         }
         return instance;
      }
      
      public static function bingding(param1:InteractiveObject, param2:Array) : void
      {
         param1.addEventListener(MouseEvent.CLICK,onBingdingUIClick);
         bingdingInfoMap[param1] = param2;
      }
      
      public static function unbingding(param1:InteractiveObject) : void
      {
         param1.removeEventListener(MouseEvent.CLICK,onBingdingUIClick);
         delete bingdingInfoMap[param1];
      }
      
      private static function onBingdingUIClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         TipsManager.singleton.hideTips();
         mData = bingdingInfoMap[param1.currentTarget];
         LayerManager.singleton.addItemToLayer(singleton,LayerDef.TEXT_BOX);
         singleton.x = LayerManager.singleton.stage.mouseX + 5;
         singleton.y = LayerManager.singleton.stage.mouseY + 5;
         mData && singleton.render();
      }
      
      private function stageClickHandler(param1:MouseEvent) : void
      {
         this.dispose();
      }
      
      private function wheelHandler(param1:MouseEvent) : void
      {
         this.dispose();
      }
      
      private function render() : void
      {
         var _loc4_:String = null;
         var _loc1_:StyleSheet = new StyleSheet();
         _loc1_.setStyle("a:link",{"color":"#CCCCCC"});
         _loc1_.setStyle("a:hover",{
            "color":"#ffffff",
            "textDecoration":"underline"
         });
         var _loc2_:TextField = this._view.content;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.wordWrap = false;
         var _loc3_:Vector.<String> = new Vector.<String>();
         var _loc5_:int = 0;
         if(_loc5_ < mData.length)
         {
            _loc4_ = mData[_loc5_][0];
            _loc3_.push("<a href=\'event:" + _loc4_ + "\'>" + _loc4_ + "</a>");
         }
         _loc2_.styleSheet = _loc1_;
         _loc2_.htmlText = _loc3_.join("<br>");
         this._view.background.height = _loc2_.y * 2 + _loc2_.height - 5;
         this._view.background.width = 104;
      }
      
      private function linkClickHandler(param1:TextEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:int = 0;
         while(_loc2_ < mData.length)
         {
            if(param1.text == mData[_loc2_][0])
            {
               mData[_loc2_][1](mData[_loc2_][2]);
               break;
            }
            _loc2_++;
         }
         this.dispose();
      }
      
      public function dispose() : void
      {
         LayerManager.singleton.stage.removeEventListener(MouseEvent.DOUBLE_CLICK,this.stageClickHandler);
         LayerManager.singleton.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.wheelHandler);
         LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK,this.stageClickHandler,false);
         LayerManager.singleton.removeItemToLayer(singleton);
         instance.removeChildren();
         this._view.content.removeEventListener(TextEvent.LINK,this.linkClickHandler);
         this._view = null;
         mData = null;
         instance = null;
      }
      
      public function get data() : Array
      {
         return mData;
      }
   }
}
