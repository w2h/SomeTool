package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.display.BitmapData;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LocationDef;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Bitmap;
   
   public class FullSceneMapBox extends FullScreenBox
   {
       
      private var _itemArr:Array;
      
      private var m_parentChildIdx:int = -1;
      
      private var m_usedForBG:BitmapData;
      
      public function FullSceneMapBox(param1:Boolean = false)
      {
         this._itemArr = [];
         var _loc2_:MovieClip = new MovieClip();
         var _loc3_:Sprite = new Sprite();
         _loc3_.addChild(new Bitmap(this.m_usedForBG = new BitmapData(1,1,true,0)));
         _loc3_.mouseEnabled = false;
         _loc3_.mouseChildren = false;
         _loc2_["background"] = _loc3_;
         super(_loc2_,false,param1,tween,5,null);
      }
      
      override public function show(param1:String = null) : IBox
      {
         this.background.width = LayerManager.singleton.stage.stageWidth;
         this.background.height = LayerManager.singleton.stage.stageHeight;
         if(m_mask)
         {
            m_mask.width = this.background.width;
            m_mask.height = this.background.height;
         }
         var _loc2_:IBox = super.show(param1);
         this.mouseEnabled = false;
         LayerManager.singleton.setAllLayerVisible(false);
         LayerManager.singleton.setLayerVisible(LayerDef.NEW_PLOT_TOP,true);
         LayerManager.singleton.setLayerVisible(LayerDef.NEW_PLOT,true);
         LayerManager.singleton.setLayerVisible(LayerDef.NEW_PLOT_FRAME,true);
         LayerManager.singleton.setLayerVisible(LayerDef.BATTLE_FRAME,true);
         LayerManager.singleton.setLayerVisible(LayerDef.BACKG_FRAME,true);
         LayerManager.singleton.setLayerVisible(LayerDef.BACKG_GROUND,true);
         LayerManager.singleton.setLayerVisible(LayerDef.LOADING,true);
         LayerManager.singleton.setLayerVisible(LayerDef.PLOT,true);
         LayerManager.singleton.setLayerVisible(LayerDef.PLOT_FRAME,true);
         LayerManager.singleton.setLayerVisible(LayerDef.VIDEO,true);
         LayerManager.singleton.setLayerVisible(LayerDef.PREWAR,true);
         LayerManager.singleton.setLayerVisible(LayerDef.PREWAR_FORE_GROUND,true);
         LayerManager.singleton.setLayerVisible(LayerDef.PREWAR_UI,true);
         LayerManager.singleton.setLayerVisible(LayerDef.TIPS,true);
         LayerManager.singleton.setLayerVisible(LayerDef.GAME_TIP,true);
         LayerManager.singleton.setLayerVisible(LayerDef.TEXT_BOX,true);
         LayerManager.singleton.setLayerVisible(LayerDef.REWARD_BOX,true);
         LayerManager.singleton.setLayerVisible(LayerDef.BOX,true);
         LayerManager.singleton.setLayerVisible(LayerDef.SYSTEM_ERROR,true);
         LayerManager.singleton.setLayerVisible(LayerDef.FIGHT,true);
         LayerManager.singleton.setLayerVisible(LayerDef.FIGHT_UI,true);
         LayerManager.singleton.setLayerVisible(LayerDef.DEBUG,true);
         LayerManager.singleton.setLayerVisible(LayerDef.KNOWLEDGE_TEST,true);
         LayerManager.singleton.setLayerVisible(LayerDef.MAP_DEF,true);
         LayerManager.singleton.setLayerVisible(LayerDef.MAIN_UI,true);
         LayerManager.singleton.setLayerVisible(LayerDef.CHAT,true);
         LayerManager.singleton.setLayerVisible(LayerDef.DROP_DOWN_LIST,true);
         LayerManager.singleton.setLayerVisible(LayerDef.DRAG_ICON,true);
         this.m_parentChildIdx = this.parent.getChildIndex(this);
         return _loc2_;
      }
      
      override public function close() : void
      {
         LayerManager.singleton.setAllLayerVisible(true);
         super.close();
      }
      
      override public function onScreenResize(param1:Event = null) : void
      {
         this.background.width = LayerManager.singleton.stage.stageWidth;
         this.background.height = LayerManager.singleton.stage.stageHeight;
         this.isShow = false;
         BoxManager.show(this,null);
         if(this.m_parentChildIdx >= 0)
         {
            this.parent.addChildAt(this,this.m_parentChildIdx);
         }
         super.onScreenResize(param1);
         var _loc2_:int = 0;
         while(_loc2_ < this._itemArr.length)
         {
            this.locationRefresh(this._itemArr[_loc2_].item,this._itemArr[_loc2_].location,this._itemArr[_loc2_].offset,this._itemArr[_loc2_].calcWH);
            _loc2_++;
         }
      }
      
      public function addItemLayout(param1:DisplayObject, param2:int, param3:Point = null, param4:Boolean = true) : void
      {
         var _loc5_:Object = new Object();
         _loc5_.item = param1;
         _loc5_.location = param2;
         _loc5_.offset = param3;
         _loc5_.calcWH = param4;
         this._itemArr.push(_loc5_);
         this.locationRefresh(param1,param2,param3,param4);
      }
      
      private function locationRefresh(param1:DisplayObject, param2:int, param3:Point, param4:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function removeItemLayout(param1:DisplayObject) : void
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this._itemArr.length)
         {
            _loc2_ = this._itemArr[_loc3_];
            if(_loc2_.item == param1)
            {
               this._itemArr.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
      }
      
      override public function destroy() : void
      {
         if(this.m_usedForBG != null)
         {
            this.m_usedForBG.dispose();
            this.m_usedForBG = null;
         }
         this._itemArr = null;
         LayerManager.singleton.setAllLayerVisible(true);
         super.destroy();
      }
   }
}
