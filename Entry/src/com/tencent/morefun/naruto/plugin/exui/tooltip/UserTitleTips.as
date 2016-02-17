package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import ui.plugin.tooltip.crew.UserTitleTipsUI;
   import rank.model.data.RankTitleCfgInfo;
   import com.greensock.TweenLite;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   
   public class UserTitleTips extends BaseTipsView
   {
       
      private var _view:UserTitleTipsUI;
      
      private var _info:RankTitleCfgInfo;
      
      private var _lite:TweenLite;
      
      private var _image:Image;
      
      public function UserTitleTips(param1:Object = null)
      {
         super(null);
         mouseChildren = false;
         addChild(this._view = new UserTitleTipsUI());
         this._image = new Image(160,60,false,true,true);
         this._image.moveLoadingMovie(80,30);
         this._view.icon.addChild(this._image);
         this._image.smoothing = false;
         this._image.visible = false;
      }
      
      public function dispose() : void
      {
         this._lite && this._lite.kill();
         this._lite = null;
         this._image.dispose();
         this._image.parent && this._image.parent.removeChild(this._image);
         this._image = null;
         this._view.parent && this._view.parent.removeChild(this._view);
         this._view = null;
         this._info = null;
      }
      
      override public function get data() : Object
      {
         return this._info;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:uint = 0;
         this._info = param1 as RankTitleCfgInfo;
         if(this._info)
         {
            _loc2_ = 4;
            if(this._info.image)
            {
               this._image.dispose();
               this._image.load(this._info.image);
               this._image.visible = true;
               this._view.title.visible = false;
            }
            else
            {
               this._view.title.htmlText = "<b>" + this._info.formattedName + "</b>";
               this._view.title.visible = true;
               this._image.visible = false;
            }
            this._view.tips1.text = this._info.obtainTips;
            this._view.tips1.height = this._view.tips1.textHeight + (this._view.tips1.numLines - 1) * _loc2_;
            this._lite && this._lite.kill();
            this._lite = TweenLite.to(this._view.label2,0.15,{
               "y":this._view.tips1.y + this._view.tips1.height + 5,
               "onUpdate":this.update
            });
            this._view.tips2.text = this._info.expireTips;
            this._view.tips2.height = this._view.tips2.textHeight + (this._view.tips2.numLines - 1) * _loc2_;
         }
      }
      
      private function update() : void
      {
         this._view.tips2.y = this._view.label2.y;
         this._view.background.height = this._view.tips2.y + this._view.tips2.height + 30;
      }
   }
}
