package com.tencent.morefun.naruto.plugin.exui.reusable.skillView
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import com.tencent.morefun.naruto.plugin.ui.core.SingleIconUI;
   import flash.display.MovieClip;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.SkillTupoLvl1;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.SkillTupoLvl2;
   import cfgData.dataStruct.SkillCFG;
   import skill.SkillAssetDef;
   import skill.config.SkillDef;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import def.TipsTypeDef;
   import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
   
   public class SkillIconItemRenderer extends ItemRenderer implements IRender
   {
       
      private var icon:Image;
      
      private var skillDescription:String;
      
      private var singleIconUI:SingleIconUI;
      
      private var mc:MovieClip;
      
      private var topoLvl:int;
      
      public function SkillIconItemRenderer(param1:MovieClip = null)
      {
         super(new MovieClip());
         this.singleIconUI = new SingleIconUI();
         this.view.addChild(this.singleIconUI);
         this.icon = new Image(45,45);
         this.singleIconUI.imgPos.addChild(this.icon);
         this.mouseChildren = false;
         this.name = "SkillIcon";
         this.singleIconUI.key.visible = false;
      }
      
      public function set tupoData(param1:Array) : void
      {
         this.topoLvl = int(param1[1]);
         this.updateShow(param1[0]);
         if(this.topoLvl == 1)
         {
            this.mc = new SkillTupoLvl1();
         }
         else if(this.topoLvl == 2)
         {
            this.mc = new SkillTupoLvl2();
         }
         if(this.mc)
         {
            this.mc.x = 20;
            this.singleIconUI.imgPos.addChild(this.mc);
         }
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 is Array)
         {
            this.tupoData = param1 as Array;
            return;
         }
         this.topoLvl = 0;
         this.updateShow(param1);
      }
      
      private function updateShow(param1:Object) : void
      {
         this.mc && this.mc.parent && this.mc.parent.removeChild(this.mc);
         this.mc = null;
         super.data = param1;
         var _loc2_:SkillCFG = param1 as SkillCFG;
         this.icon.load(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,_loc2_.id));
         this.skillDescription = SkillDef.getTypeString(_loc2_.type) + ":" + _loc2_.name;
         if(this.topoLvl > 0)
         {
            TipsManager.singleton.binding(this,[_loc2_,this.topoLvl],TipsTypeDef.SKILL);
         }
         else
         {
            TipsManager.singleton.binding(this,_loc2_,TipsTypeDef.SKILL);
         }
      }
      
      override public function set index(param1:int) : void
      {
         var _loc2_:Array = ["W","E","R","T","Y"];
         m_index = param1;
         this.singleIconUI.key.text = _loc2_[this.index];
      }
      
      private function get view() : MovieClip
      {
         return m_skin as MovieClip;
      }
      
      override public function destroy() : void
      {
         this.icon.parent && this.icon.parent.removeChild(this.icon);
         this.icon.dispose();
         this.icon = null;
         this.mc && this.mc.parent && this.mc.parent.removeChild(this.mc);
         this.mc = null;
         this.singleIconUI.parent && this.singleIconUI.parent.removeChild(this.singleIconUI);
         DisplayUtils.clear(this.singleIconUI);
         this.singleIconUI = null;
         TipsManager.singleton.unbinding(this,TipsTypeDef.SKILL);
         super.destroy();
      }
      
      public function dispose() : void
      {
         this.destroy();
      }
   }
}
