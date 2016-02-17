package com.tencent.morefun.naruto.plugin.exui.dungeon
{
   import com.tencent.morefun.naruto.plugin.ui.box.BaseBox;
   import ui.plugin.dungeon.reward.DungeonCommonRewardWindowUI;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.SimpleLayout;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import bag.data.ItemData;
   import serverProto.player.ProtoRewardNotify;
   import serverProto.player.ProtoRewardType;
   import flash.geom.Rectangle;
   
   [Event(name="close",type="flash.events.Event")]
   public class DungeonCommonRewardWindow extends BaseBox
   {
       
      private var _view:DungeonCommonRewardWindowUI;
      
      private var _layout:SimpleLayout;
      
      private var _type:uint;
      
      public function DungeonCommonRewardWindow(param1:Vector.<ItemData>, param2:uint, param3:ProtoRewardNotify)
      {
         this._type = param2;
         super(this._view = new DungeonCommonRewardWindowUI(),true,true);
         var _loc4_:Array = [];
         while(_loc4_.length < param1.length)
         {
            _loc4_.push(param1[_loc4_.length]);
         }
         this._view.tgpf.visible = false;
         this._view.ckpfBtn.visible = false;
         if(param2 == ProtoRewardType.PROTO_REWARD_TYPE_BEFALL_DUNGEON)
         {
            if(param3.hasScoreInfo)
            {
               this._view.ckpfBtn.visible = true;
               this._view.tgpf.syxl.text = param3.scoreInfo.hpScore.toString();
               this._view.tgpf.shhh.text = param3.scoreInfo.roundScore.toString();
               this._view.tgpf.swcs.text = param3.scoreInfo.ninjaDeathScore.toString();
               this._view.tgpf.zshz.text = param3.scoreInfo.damageScore.toString();
               this._view.tgpf.zf.text = param3.scoreInfo.totalScore.toString();
            }
            else
            {
               this._view.ckpfBtn.visible = false;
            }
         }
         var _loc5_:Rectangle = this._view.container.getBounds(this._view);
         this._layout = new SimpleLayout(1,1,5,0);
         this._layout.itemRenderClass = DungeonCommonRewardWindow;
         this._layout.column = _loc4_.length;
         this._layout.dataProvider = _loc4_;
         this._view.container.addChild(this._layout);
         this._layout.x = (_loc5_.width - this._layout.width) / 2;
         this._layout.y = (_loc5_.height - this._layout.height) / 2;
         addEventListener(Event.ADDED_TO_STAGE,this.stageHandler);
         addEventListener(Event.REMOVED_FROM_STAGE,this.stageHandler);
         addEventListener(MouseEvent.CLICK,this.clickHandler);
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         if(param1.target == this._view.exitBtn)
         {
            this.close();
         }
         else if(param1.target == this._view.ckpfBtn)
         {
            this._view.ckpfBtn.visible = false;
            this._view.tgpf.visible = true;
         }
      }
      
      private function stageHandler(param1:Event) : void
      {
         if(param1.type == Event.ADDED_TO_STAGE)
         {
            stage.addEventListener(Event.RESIZE,this.resizeUpdate);
            this.resizeUpdate(param1);
         }
         else
         {
            stage.removeEventListener(Event.RESIZE,this.resizeUpdate);
         }
      }
      
      private function resizeUpdate(param1:Event) : void
      {
         var _loc2_:Point = globalToLocal(new Point());
         graphics.clear();
         graphics.beginFill(0,0.3);
         graphics.drawRect(_loc2_.x,_loc2_.y,stage.stageWidth,stage.stageHeight);
         graphics.endFill();
      }
      
      override public function destroy() : void
      {
         this._view.parent && this._view.parent.removeChild(this._view);
         this._view = null;
         this._layout.dispose();
         this._layout.parent && this._layout.parent.removeChild(this._layout);
         this._layout = null;
         removeEventListener(Event.ADDED_TO_STAGE,this.stageHandler);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.stageHandler);
         removeEventListener(MouseEvent.CLICK,this.clickHandler);
         if(stage)
         {
            stage.removeEventListener(Event.RESIZE,this.resizeUpdate);
         }
         super.destroy();
      }
      
      override public function close() : void
      {
         super.close();
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get type() : uint
      {
         return this._type;
      }
   }
}

import flash.display.Sprite;
import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
import bag.data.ItemData;
import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;

class DungeonRewardItem extends Sprite implements IRender
{
    
   private var _data:ItemData;
   
   private var _icon:ItemIcon;
   
   function DungeonRewardItem()
   {
      super();
      addChild(this._icon = new ItemIcon());
   }
   
   private function render() : void
   {
      this._icon.loadIconByData(this._data,true,true);
   }
   
   public function dispose() : void
   {
      this._icon.destroy();
      this._icon.parent && this._icon.parent.removeChild(this._icon);
      this._icon = null;
      this._data = null;
   }
   
   public function get data() : Object
   {
      return this._data;
   }
   
   public function set data(param1:Object) : void
   {
      this._data = param1 as ItemData;
      this._data && this.render();
   }
   
   override public function get height() : Number
   {
      return 64;
   }
   
   override public function get width() : Number
   {
      return 64;
   }
}
