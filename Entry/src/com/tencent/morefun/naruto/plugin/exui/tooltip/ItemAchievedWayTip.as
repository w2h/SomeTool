package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.ItemAchievedWayUI;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.EasyLayout;
   import flash.text.TextField;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import naruto.component.controls.ButtonClose;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import com.tencent.morefun.naruto.plugin.ui.components.buttons.MovieClipButton;
   import cfgData.dataStruct.ItemAchievedWayCFG;
   import flash.utils.ByteArray;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.display.DisplayObjectContainer;
   import throughTheBeast.data.BeastData;
   import bag.utils.BagUtils;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import bag.data.ItemData;
   import def.NinjaAssetDef;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.ExclamatoryMarkBTN;
   import flash.display.MovieClip;
   import flash.events.Event;
   import hud.utils.HudMenuIconUtils;
   import base.PluginFlagsCenter;
   import def.PluginDef;
   import guide.def.GuideFlagDef;
   import flash.text.TextFormat;
   import com.tencent.morefun.naruto.plugin.exui.render.ItemAchievedWayRender;
   
   public class ItemAchievedWayTip extends BaseTipsView
   {
      
      private static var ms_instance:com.tencent.morefun.naruto.plugin.exui.tooltip.ItemAchievedWayTip;
       
      private var m_tipsClsMap:Dictionary;
      
      private var m_skin:ItemAchievedWayUI;
      
      private var _layout:EasyLayout;
      
      private var m_configArr:Dictionary;
      
      private var m_tipsItemNameTf:TextField;
      
      private var m_tipsImg:ItemIcon;
      
      private var m_tipsCloseBtn:ButtonClose;
      
      private var m_isShow:Boolean = false;
      
      private var m_tipsSourceTf:TextField;
      
      private var m_tipsGreenImg:Image;
      
      private var m_lastBindItem:Object;
      
      private var m_exclamatoryMarkbtn:MovieClipButton;
      
      public function ItemAchievedWayTip()
      {
         this.m_tipsClsMap = new Dictionary();
         super();
         this.m_skin = new ItemAchievedWayUI();
         this.m_skin.mouseEnabled = false;
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.bold = true;
         this.m_tipsSourceTf = this.m_skin.getChildByName("sourceTF") as TextField;
         this.m_tipsSourceTf.defaultTextFormat = _loc1_;
         this.m_tipsSourceTf.text = "来源";
         this.m_tipsItemNameTf = (this.m_skin.getChildByName("itemNormal") as Sprite).getChildByName("nameText") as TextField;
         this.m_tipsItemNameTf.defaultTextFormat = _loc1_;
         this.m_tipsImg = new ItemIcon();
         this.m_tipsImg.mouseEnabled = false;
         this.m_tipsImg.x = 17;
         this.m_tipsImg.y = 23;
         this.m_skin.addChild(this.m_tipsImg);
         this.m_tipsGreenImg = new Image();
         this.m_tipsGreenImg.mouseEnabled = false;
         this.m_tipsGreenImg.x = 9;
         this.m_tipsGreenImg.y = 19;
         this.m_skin.addChild(this.m_tipsGreenImg);
         ((this.m_skin.getChildByName("greenNinja") as Sprite).getChildByName("nameText") as TextField).defaultTextFormat = _loc1_;
         ((this.m_skin.getChildByName("greenNinja") as Sprite).getChildByName("nameText2") as TextField).defaultTextFormat = _loc1_;
         (this.m_skin.getChildByName("greenNinja") as Sprite).parent.addChild(this.m_skin.getChildByName("greenNinja"));
         this.m_tipsCloseBtn = this.m_skin.getChildByName("closeBtn") as ButtonClose;
         this.m_tipsCloseBtn.addEventListener(MouseEvent.CLICK,this.onCloseTip);
         var _loc2_:Sprite = new Sprite();
         _loc2_.x = 23;
         _loc2_.y = 150;
         this.m_skin.addChild(_loc2_);
         this._layout = new EasyLayout(ItemAchievedWayRender,3,1,1,7);
         this._layout.x = 8;
         _loc2_.addChild(this._layout);
      }
      
      public static function get singleton() : com.tencent.morefun.naruto.plugin.exui.tooltip.ItemAchievedWayTip
      {
         if(ms_instance == null)
         {
            ms_instance = new com.tencent.morefun.naruto.plugin.exui.tooltip.ItemAchievedWayTip();
         }
         return ms_instance;
      }
      
      public function initXML(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:ItemAchievedWayCFG = null;
         this.m_configArr = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < param1.row.length())
         {
            _loc2_ = param1.row[_loc4_];
            _loc3_ = new ItemAchievedWayCFG();
            _loc3_.id = parseInt(_loc2_.@id);
            _loc3_.name = _loc2_.@name.toString();
            _loc3_.url = _loc2_.@url.toString();
            _loc3_.conditionProtoHudNotify = parseInt(_loc2_.@conditionProtoHudNotify);
            this.m_configArr[int(_loc3_.id)] = _loc3_;
            _loc4_++;
         }
      }
      
      public function getAchieveConfig(param1:int) : ItemAchievedWayCFG
      {
         if(this.m_configArr[param1])
         {
            return this.m_configArr[param1] as ItemAchievedWayCFG;
         }
         return null;
      }
      
      public function initByteArray(param1:ByteArray) : void
      {
         this.m_configArr = CFGDataLibs.parseData(param1,CFGDataEnum.ENUM_ItemAchievedWayCFG);
      }
      
      public function binding(param1:DisplayObject, param2:Object, param3:int = 0, param4:Array = null, param5:int = 0) : void
      {
         if(param2 == null || param2.achievedWay == "" || param2.achievedWay == null)
         {
            this.unbind(param1);
            return;
         }
         if(this.m_tipsClsMap[param1])
         {
            this.m_tipsClsMap[param1] = [param2,param3,param4];
            return;
         }
         this.m_tipsClsMap[param1] = [param2,param3,param4];
         param1.addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         if(param5 == 1)
         {
            this.onMouseOver(null,param1 as DisplayObjectContainer);
            param1.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
            param1.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         }
      }
      
      public function unbind(param1:DisplayObject) : void
      {
         this.removeMark(param1 as DisplayObjectContainer);
         if(this.m_tipsClsMap[param1])
         {
            delete this.m_tipsClsMap[param1];
         }
         param1.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         param1.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         var _loc4_:String = null;
         var _loc8_:* = 0;
         if(!this.m_tipsClsMap[param1.currentTarget.data])
         {
            this.removeMark(param1.currentTarget.data);
            this.unbind(param1.currentTarget.data);
            return;
         }
         var _loc2_:Object = this.m_tipsClsMap[param1.currentTarget.data][0];
         var _loc3_:int = this.m_tipsClsMap[param1.currentTarget.data][1];
         this.m_skin.getChildByName("itemNormal").visible = _loc3_ == 0?true:false;
         this.m_skin.getChildByName("greenNinja").visible = _loc3_ == 1?true:false;
         if(this.m_isShow && this.m_lastBindItem == param1.currentTarget.data)
         {
            this.onCloseTip();
            return;
         }
         this.m_skin.visible = true;
         this.m_isShow = true;
         this.m_lastBindItem = param1.currentTarget.data;
         if(_loc2_ is BeastData)
         {
            _loc4_ = _loc2_.name;
            _loc4_ = _loc4_.replace("通灵兽·","");
         }
         else
         {
            _loc4_ = BagUtils.getColoredItemName(_loc2_.id);
            if(_loc4_.indexOf("[") > 0)
            {
               _loc4_ = _loc4_.replace("[","\n[");
            }
         }
         this.m_tipsItemNameTf.htmlText = "<b>" + _loc4_ + "</b>";
         LayerManager.singleton.addItemToLayer(this.m_skin,LayerDef.INTERACTIVE_TIPS);
         this.preMove(LayerManager.singleton.stage.mouseX - 60 - LayoutManager.stageOffsetX,LayerManager.singleton.stage.mouseY + 60 - LayoutManager.stageOffsetY);
         var _loc5_:String = _loc2_.achievedWay;
         var _loc6_:Array = _loc5_.split("|");
         var _loc7_:Array = new Array();
         for each(_loc8_ in _loc6_)
         {
            if(this.m_configArr[_loc8_])
            {
               this.m_configArr[_loc8_].itemId = _loc3_ == 0?_loc2_.id:_loc2_.id;
               this.m_configArr[_loc8_].itemType = _loc2_.type;
               _loc7_.push(this.m_configArr[_loc8_]);
            }
         }
         this.m_skin.getChildByName("bg").height = 180 + (16 + 5) * _loc6_.length;
         this.m_skin.getChildByName("flowerMc").y = 180 - 50 + (16 + 5) * _loc6_.length;
         this._layout.row = _loc6_.length;
         this._layout.dataProvider = _loc7_;
         this._layout.addEventListener("achievedWayClick",this.onCloseTip,true);
         LayerManager.singleton.stage.addEventListener(MouseEvent.CLICK,this.onStageClick,true);
         if(_loc3_ == 0)
         {
            if(_loc2_ is BeastData)
            {
               this.m_tipsImg.load("assets/bag/item/" + _loc2_.id + ".png");
            }
            else
            {
               this.m_tipsImg.loadIconByData(_loc2_ as ItemData);
            }
         }
         else
         {
            this.m_tipsGreenImg.load(NinjaAssetDef.getAsset(NinjaAssetDef.HEAD_WIDE,_loc2_.id));
            ((this.m_skin.getChildByName("greenNinja") as Sprite).getChildByName("nameText") as TextField).text = _loc2_.title;
            ((this.m_skin.getChildByName("greenNinja") as Sprite).getChildByName("nameText2") as TextField).text = _loc2_.name;
         }
      }
      
      private function onMouseOver(param1:MouseEvent, param2:DisplayObjectContainer = null) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         if(param1 == null)
         {
            _loc3_ = param2;
         }
         else
         {
            _loc3_ = param1.currentTarget as DisplayObjectContainer;
         }
         if(!_loc3_.getChildByName("ExclamatoryMarkbtn"))
         {
            this.m_exclamatoryMarkbtn = new MovieClipButton(new ExclamatoryMarkBTN() as MovieClip);
            this.m_exclamatoryMarkbtn.data = _loc3_;
            this.m_exclamatoryMarkbtn.addEventListener(MouseEvent.CLICK,this.onClick);
            this.m_exclamatoryMarkbtn.name = "ExclamatoryMarkbtn";
            if(this.m_tipsClsMap[_loc3_][1] == 0)
            {
               this.m_exclamatoryMarkbtn.x = _loc3_.width - this.m_exclamatoryMarkbtn.width - 6;
               this.m_exclamatoryMarkbtn.y = 2;
            }
            else
            {
               this.m_exclamatoryMarkbtn.x = _loc3_.width - this.m_exclamatoryMarkbtn.width - 8;
               this.m_exclamatoryMarkbtn.y = 8;
            }
            if(this.m_tipsClsMap[_loc3_][2] != null)
            {
               this.m_exclamatoryMarkbtn.x = this.m_exclamatoryMarkbtn.x + this.m_tipsClsMap[_loc3_][2][0];
               this.m_exclamatoryMarkbtn.y = this.m_exclamatoryMarkbtn.y + this.m_tipsClsMap[_loc3_][2][1];
            }
            _loc3_.addChild(this.m_exclamatoryMarkbtn);
         }
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         this.removeMark(_loc2_);
      }
      
      private function removeMark(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         try
         {
            _loc2_ = param1.getChildByName("ExclamatoryMarkbtn");
            if(_loc2_)
            {
               param1.removeChild(_loc2_);
               if(this.m_exclamatoryMarkbtn != null)
               {
                  this.m_exclamatoryMarkbtn.removeEventListener(MouseEvent.CLICK,this.onClick);
                  this.m_exclamatoryMarkbtn.dispose();
               }
               this.m_exclamatoryMarkbtn = null;
            }
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         var _loc2_:DisplayObject = param1.currentTarget as DisplayObject;
         if(this.m_tipsClsMap[_loc2_])
         {
            _loc2_.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
            _loc2_.removeEventListener(MouseEvent.CLICK,this.onClick);
            delete this.m_tipsClsMap[_loc2_];
            if(this.m_lastBindItem == _loc2_)
            {
               this.m_lastBindItem = null;
            }
         }
      }
      
      private function updateTip(param1:Object) : void
      {
         var _loc2_:Array = param1.achievedWays.split("|");
      }
      
      public function showMarkBtnByName(param1:String) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in this.m_tipsClsMap)
         {
            if(_loc2_.name == param1)
            {
               this.onMouseOver(null,_loc2_ as DisplayObjectContainer);
               _loc2_.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
               _loc2_.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
               break;
            }
         }
      }
      
      override public function preMove(param1:int, param2:int) : void
      {
         _moveX = param1;
         _moveY = param2;
         this.move(_moveX,_moveY);
      }
      
      override public function move(param1:int, param2:int) : void
      {
         if(param1 + this.m_skin.width > LayoutManager.stageWidth)
         {
            this.m_skin.x = param1 - this.m_skin.width;
         }
         else
         {
            this.m_skin.x = param1;
         }
         if(param2 + this.m_skin.height > LayoutManager.stageHeight)
         {
            if(param2 - this.m_skin.height < 0)
            {
               this.m_skin.y = LayoutManager.stageHeight - this.m_skin.height;
            }
            else
            {
               this.m_skin.y = param2 - this.m_skin.height - 10;
            }
         }
         else
         {
            this.m_skin.y = param2 + 10;
         }
      }
      
      private function onCloseTip(param1:MouseEvent = null) : void
      {
         HudMenuIconUtils.needRequestDugenInfo = true;
         LayerManager.singleton.removeItemToLayer(this.m_skin);
         this.m_lastBindItem = null;
         this.m_tipsImg.unload();
         this._layout.removeEventListener("achievedWayClick",this.onCloseTip);
         LayerManager.singleton.stage.removeEventListener(MouseEvent.CLICK,this.onStageClick);
         this.m_skin.visible = false;
         this.m_isShow = false;
         this.m_tipsGreenImg.dispose();
      }
      
      private function onStageClick(param1:MouseEvent) : void
      {
         if(!this.m_isShow || this.m_exclamatoryMarkbtn == param1.target)
         {
            return;
         }
         if(PluginFlagsCenter.getPluginFlags(PluginDef.GUIDE).getFlag(GuideFlagDef.SHOWING_GUIDE))
         {
            return;
         }
         if(!this.m_skin.hitTestPoint(param1.stageX,param1.stageY,true))
         {
            this.onCloseTip();
         }
      }
   }
}
