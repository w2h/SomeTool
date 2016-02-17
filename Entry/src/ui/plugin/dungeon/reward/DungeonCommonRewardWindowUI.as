package ui.plugin.dungeon.reward
{
   import flash.display.MovieClip;
   import naruto.component.controls.ButtonNormalBlue;
   
   public dynamic class DungeonCommonRewardWindowUI extends MovieClip
   {
       
      public var background:MovieClip;
      
      public var container:MovieClip;
      
      public var tgpf:MovieClip;
      
      public var ckpfBtn:ButtonNormalBlue;
      
      public var exitBtn:ButtonNormalBlue;
      
      public function DungeonCommonRewardWindowUI()
      {
         super();
         this.__setProp_exitBtn_();
         this.__setProp_ckpfBtn_();
      }
      
      function __setProp_exitBtn_() : *
      {
         try
         {
            this.exitBtn["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.exitBtn.clickSound = "click";
         this.exitBtn.enabled = true;
         this.exitBtn.label = "退 出";
         this.exitBtn.overSound = "none";
         this.exitBtn.visible = true;
         try
         {
            this.exitBtn["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      function __setProp_ckpfBtn_() : *
      {
         try
         {
            this.ckpfBtn["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.ckpfBtn.clickSound = "click";
         this.ckpfBtn.enabled = true;
         this.ckpfBtn.label = "查看评分";
         this.ckpfBtn.overSound = "none";
         this.ckpfBtn.visible = true;
         try
         {
            this.ckpfBtn["componentInspectorSetting"] = false;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
