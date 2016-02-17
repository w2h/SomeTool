package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import flash.display.BitmapData;
   import ninja.ui.DefaultNinjaHeadImg;
   import com.tencent.morefun.naruto.plugin.exui.base.ExImage;
   import flash.display.Bitmap;
   import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
   import flash.events.MouseEvent;
   import ninja.model.data.NinjaInfo;
   import crew.def.NinjaNameColorDef;
   import def.NinjaAssetDef;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import def.TipsTypeDef;
   import flash.events.Event;
   import ninja.command.OpenNinjaDetailCommand;
   import sound.commands.PlayUISoundCommand;
   import sound.def.UISoundDef;
   import flash.display.MovieClip;
   
   public class StarSimpleNinjaRender extends ItemRenderer implements IRender
   {
      
      public static var defalutImgBitmapData:BitmapData = new DefaultNinjaHeadImg();
       
      protected var img:ExImage;
      
      protected var defaultImgBitmap:Bitmap;
      
      private var _showDeath:Boolean;
      
      private var _showHp:Boolean;
      
      protected var statusIcon:com.tencent.morefun.naruto.plugin.exui.render.StarSimpleNinjaStatusIconUI;
      
      public var showStar:Boolean = true;
      
      public var showLv:Boolean = true;
      
      public var setDefaultImgWH:Array;
      
      public function StarSimpleNinjaRender(param1:MovieClip = null)
      {
         this.setDefaultImgWH = [0,0];
         if(!param1 || !(param1 is StarSimpleNinjaRenderUI))
         {
            var param1:MovieClip = new StarSimpleNinjaRenderUI();
         }
         super(param1);
         this.init();
      }
      
      public function get showHp() : Boolean
      {
         return this._showHp;
      }
      
      public function set showHp(param1:Boolean) : void
      {
         this._showHp = param1;
      }
      
      public function get showDeath() : Boolean
      {
         return this._showDeath;
      }
      
      public function set showDeath(param1:Boolean) : void
      {
         this._showDeath = param1;
      }
      
      override public function get height() : Number
      {
         return 70;
      }
      
      override public function get width() : Number
      {
         return 57;
      }
      
      protected function init() : void
      {
         this.view.frame.gotoAndStop("empty");
         this.view.bg.gotoAndStop(1);
         this.view.upBg.gotoAndStop(1);
         this.view.frame.mouseChildren = this.view.frame.mouseEnabled = false;
         this.defaultImgBitmap = new Bitmap(defalutImgBitmapData);
         if(this.setDefaultImgWH[0] != 0)
         {
            this.view.upBg.width = 61 / 45 * this.setDefaultImgWH[0];
            this.view.bg.width = 61 / 45 * this.setDefaultImgWH[0];
            this.view.frame.width = 57 / 45 * this.setDefaultImgWH[0];
            this.view.upBg.height = 61 / 45 * this.setDefaultImgWH[1];
            this.view.bg.height = 61 / 45 * this.setDefaultImgWH[1];
            this.view.frame.height = 52 / 45 * this.setDefaultImgWH[1];
         }
         this.img = new ExImage(this.setDefaultImgWH[0],this.setDefaultImgWH[1],this.setDefaultImgWH[0] == 0?false:true,this.defaultImgBitmap);
         DisplayUtils.replaceDisplay(this.view.imgRect,this.img);
         this.statusIcon = new com.tencent.morefun.naruto.plugin.exui.render.StarSimpleNinjaStatusIconUI();
         this.view.star.stop();
         buttonMode = true;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:* = false;
         m_data = param1;
         this.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         if(param1)
         {
            this.view.levelText.htmlText = "<b>LV" + (param1 as NinjaInfo).level.toString() + "</b>";
            this.view.frame.gotoAndStop((param1 as NinjaInfo).selected?"yellow":"empty");
            this.view.bg.gotoAndStop(NinjaNameColorDef.getFrameIndexByStrengthenLevel((param1 as NinjaInfo).levelUpgrade));
            this.view.upBg.gotoAndStop(NinjaNameColorDef.getBgIndexByStrengthenLevel((param1 as NinjaInfo).levelUpgrade));
            this.view.star.gotoAndStop((param1 as NinjaInfo).starLevel + 1);
            this.img.load(NinjaAssetDef.getAsset(NinjaAssetDef.HEAD_SMALL,(param1 as NinjaInfo).cfg.id));
            TipsManager.singleton.binding(this,param1,TipsTypeDef.NINJA_INFO);
            this.view.levelText.visible = this.showLv;
            this.view.star.visible = this.showStar;
            if(this._showHp)
            {
               this.view.hp.scaleX = (param1 as NinjaInfo).detail.life / (param1 as NinjaInfo).detail.lifeMax.value;
               this.view.hp.visible = true;
               this.view.hpBg.visible = true;
            }
            else
            {
               this.view.hp.visible = false;
               this.view.hpBg.visible = false;
            }
            if(this._showDeath)
            {
               _loc2_ = (param1 as NinjaInfo).detail.life == 0;
               if(_loc2_)
               {
                  this.view.filters = [DisplayUtils.disableCM];
                  if(!contains(this.statusIcon))
                  {
                     addChild(this.statusIcon);
                  }
               }
               else
               {
                  this.view.filters = [];
                  if(contains(this.statusIcon))
                  {
                     removeChild(this.statusIcon);
                  }
               }
            }
            this.addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
            this.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         }
      }
      
      protected function onMouseOver(param1:Event) : void
      {
         !this.data.selected && this.view.frame.gotoAndStop("blue");
      }
      
      protected function onMouseOut(param1:Event) : void
      {
         !this.data.selected && this.view.frame.gotoAndStop("empty");
      }
      
      protected function onDetailButtonClick(param1:MouseEvent) : void
      {
         new OpenNinjaDetailCommand((m_data as NinjaInfo).id,true,(m_data as NinjaInfo).sequence).call();
         new PlayUISoundCommand(UISoundDef.BUTTON_CLICK).call();
      }
      
      override public function set selected(param1:Boolean) : void
      {
         m_selected = param1;
         this.view.frame.gotoAndStop(m_selected?"yellow":"empty");
      }
      
      protected function get view() : StarSimpleNinjaRenderUI
      {
         return m_skin as StarSimpleNinjaRenderUI;
      }
      
      override public function destroy() : void
      {
         TipsManager.singleton.unbinding(this,TipsTypeDef.NINJA_INFO);
         this.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         this.img.parent && this.img.parent.removeChild(this.img);
         this.img.dispose();
         this.img = null;
         this.defaultImgBitmap.parent && this.defaultImgBitmap.parent.removeChild(this.defaultImgBitmap);
         this.defaultImgBitmap = null;
         if(contains(this.statusIcon))
         {
            removeChild(this.statusIcon);
         }
         super.destroy();
      }
      
      public function dispose() : void
      {
         this.destroy();
      }
   }
}
