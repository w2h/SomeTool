package com.tencent.morefun.naruto.plugin.exui.cursor
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.ui.MultiSellCursorUI;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import flash.ui.Mouse;
   import crew.utils.CrewUtils;
   
   public class MultiSellCursor extends Sprite
   {
       
      private var _ui:MultiSellCursorUI;
      
      private var _activated:Boolean;
      
      public function MultiSellCursor()
      {
         super();
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this._ui = new MultiSellCursorUI();
         this._ui.gotoAndStop(1);
         addChild(this._ui);
         CrewUtils.model.multiSellActivated = false;
      }
      
      public function destroy() : void
      {
         this.deactivate();
      }
      
      public function get activated() : Boolean
      {
         return this._activated;
      }
      
      public function activate(param1:int, param2:int) : void
      {
         if(this._activated)
         {
            return;
         }
         this._ui.x = param1;
         this._ui.y = param2;
         LayerManager.singleton.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         LayerManager.singleton.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         LayerManager.singleton.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         LayerManager.singleton.addItemToLayer(this,LayerDef.DRAG_ICON);
         Mouse.hide();
         this._activated = true;
         CrewUtils.model.multiSellActivated = true;
      }
      
      public function deactivate() : void
      {
         if(!this._activated)
         {
            return;
         }
         this._ui.gotoAndStop(1);
         LayerManager.singleton.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         LayerManager.singleton.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         LayerManager.singleton.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         LayerManager.singleton.removeItemToLayer(this);
         Mouse.show();
         this._activated = false;
         CrewUtils.model.multiSellActivated = false;
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this._ui.gotoAndStop(3);
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this._ui.gotoAndStop(1);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         this._ui.x = param1.stageX;
         this._ui.y = param1.stageY;
      }
   }
}
