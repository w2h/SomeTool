package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.utils.getDefinitionByName;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   
   public class SysBox extends BaseBox
   {
       
      private var bg:MovieClip;
      
      private var btn:MovieClip;
      
      private var closedFun:Function;
      
      public function SysBox(param1:String, param2:Function = null, param3:Boolean = false, param4:String = null)
      {
         super(this.createSkin(param1),param3,true,true,5,param4);
         this.closedFun = param2;
      }
      
      private static function createObject(param1:String, ... rest) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function createSkin(param1:String) : Sprite
      {
         var _loc2_:Sprite = new Sprite();
         this.bg = createObject("naruto.component.controls.Background_5") as MovieClip;
         this.bg.name = "background";
         this.bg.width = 400;
         this.bg.height = 200;
         _loc2_.addChild(this.bg);
         var _loc3_:TextField = new TextField();
         _loc3_.defaultTextFormat = new TextFormat("SimSun",14,16777215,true,null,null,null,null,"center",null,null,null,3);
         _loc3_.wordWrap = true;
         _loc3_.multiline = true;
         _loc3_.x = 40;
         _loc3_.width = 320;
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         _loc3_.y = 140 - _loc3_.textHeight >> 1;
         _loc3_.text = param1;
         _loc2_.addChild(_loc3_);
         this.btn = createObject("naruto.component.controls.ButtonNormalBlue") as MovieClip;
         this.btn.x = 147;
         this.btn.y = 140;
         this.btn["label"] = "确定";
         this.btn["clickSound"] = "none";
         this.btn.addEventListener(MouseEvent.CLICK,this.onClickBtn);
         _loc2_.addChild(this.btn);
         return _loc2_;
      }
      
      protected function onClickBtn(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function show(param1:String = null) : IBox
      {
         return super.show(param1 || LayerDef.SYSTEM_ERROR);
      }
      
      override public function destroy() : void
      {
         if(this.closedFun != null)
         {
            this.closedFun();
            this.closedFun = null;
         }
         this.btn.removeEventListener(MouseEvent.CLICK,this.onClickBtn);
         this.btn = null;
         this.bg = null;
      }
   }
}
