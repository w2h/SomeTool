package com.tencent.morefun.naruto.plugin.exui.dialog
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.teammate.TeammateTalkUI;
   import com.greensock.TweenLite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class DialogView extends Sprite
   {
       
      private var _ui:TeammateTalkUI;
      
      public function DialogView()
      {
         super();
         this._ui = new TeammateTalkUI();
         (this._ui.context.textfield as TextField).wordWrap = false;
         (this._ui.context.textfield as TextField).autoSize = TextFieldAutoSize.LEFT;
         this._ui.gotoAndStop(1);
         addChild(this._ui);
      }
      
      public function showDialog(param1:String) : void
      {
         var _loc2_:String = param1;
         if(_loc2_.length > 10)
         {
            _loc2_ = param1.substr(0,9);
            _loc2_ = _loc2_ + "...";
         }
         TweenLite.killDelayedCallsTo(this._ui.gotoAndPlay);
         this._ui.gotoAndStop(1);
         this._ui.context.textfield.htmlText = "<b>" + _loc2_ + "</b>";
         this._ui.gotoAndPlay("show");
         TweenLite.delayedCall(3,this._ui.gotoAndPlay,["hide"]);
      }
      
      public function destory() : void
      {
         TweenLite.killDelayedCallsTo(this._ui.gotoAndPlay);
         this._ui.parent && this._ui.parent.removeChild(this._ui);
         this._ui.stop();
         this._ui = null;
      }
      
      public function reset() : void
      {
         if(this._ui)
         {
            TweenLite.killDelayedCallsTo(this._ui.gotoAndPlay);
            this._ui.gotoAndStop(1);
         }
      }
   }
}
