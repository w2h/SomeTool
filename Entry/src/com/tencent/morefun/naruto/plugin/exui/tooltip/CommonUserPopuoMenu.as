package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.tooltip.data.CommonUserPopupMenuData;
   import flash.utils.Dictionary;
   import flash.display.InteractiveObject;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import ui.plugin.rank.PopupMenuUI;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.events.TextEvent;
   import guild.command.JoinGuildProtoCommand;
   import crew.cmd.OpenOthersCrewBoxCommand;
   import friend.command.RequestAddFriendCommand;
   
   public class CommonUserPopuoMenu extends Sprite
   {
      
      private static var mData:CommonUserPopupMenuData;
      
      private static var bingdingInfoMap:Dictionary = new Dictionary();
      
      private static var instance:com.tencent.morefun.naruto.plugin.exui.tooltip.CommonUserPopuoMenu;
       
      private var _view:PopupMenuUI;
      
      public function CommonUserPopuoMenu()
      {
         super();
         this._view = new PopupMenuUI();
         this.addChild(this._view);
         this._view.content.addEventListener(TextEvent.LINK,this.linkClickHandler);
         LayerManager.singleton.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.wheelHandler);
         LayerManager.singleton.stage.addEventListener(MouseEvent.CLICK,this.stageClickHandler,false,int.MIN_VALUE);
      }
      
      public static function get singleton() : com.tencent.morefun.naruto.plugin.exui.tooltip.CommonUserPopuoMenu
      {
         if(instance == null)
         {
            instance = new com.tencent.morefun.naruto.plugin.exui.tooltip.CommonUserPopuoMenu();
         }
         return instance;
      }
      
      public static function bingding(param1:InteractiveObject, param2:CommonUserPopupMenuData) : void
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
         mData = bingdingInfoMap[param1.currentTarget];
         LayerManager.singleton.addItemToLayer(singleton,LayerDef.TEXT_BOX);
         singleton.x = LayerManager.singleton.stage.mouseX;
         singleton.y = LayerManager.singleton.stage.mouseY - 10;
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function linkClickHandler(param1:TextEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function dispose() : void
      {
         LayerManager.singleton.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.wheelHandler);
         LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK,this.stageClickHandler,false);
         LayerManager.singleton.removeItemToLayer(singleton);
         instance.removeChildren();
         this._view.content.removeEventListener(TextEvent.LINK,this.linkClickHandler);
         this._view = null;
         mData = null;
         instance = null;
      }
      
      public function get data() : CommonUserPopupMenuData
      {
         return mData;
      }
   }
}
