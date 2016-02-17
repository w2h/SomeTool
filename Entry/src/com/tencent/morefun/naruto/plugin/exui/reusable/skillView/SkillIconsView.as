package com.tencent.morefun.naruto.plugin.exui.reusable.skillView
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.SimpleLayout;
   import com.tencent.morefun.naruto.plugin.ui.core.SkillIconsUI;
   import cfgData.dataStruct.NinjaSkillCFG;
   import cfgData.dataStruct.SkillCFG;
   import skill.config.NinjaSkillConfig;
   import skill.config.SkillConfig;
   import ninja.model.data.NinjaSecondAwakeItemInfo;
   import ninja.model.data.NinjaInfo;
   import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
   import flash.display.MovieClip;
   
   public class SkillIconsView extends Sprite
   {
       
      public var kathaSkillIcons:SimpleLayout;
      
      public var commonSkillIcon:com.tencent.morefun.naruto.plugin.exui.reusable.skillView.SkillIconItemRenderer;
      
      public var otherSkillIcons:SimpleLayout;
      
      private var skillIconsUI:SkillIconsUI;
      
      public function SkillIconsView()
      {
         super();
         this.skillIconsUI = new SkillIconsUI();
         this.addChild(this.skillIconsUI);
         this.kathaSkillIcons = new SimpleLayout(1,2,-1);
         this.kathaSkillIcons.itemRenderClass = SkillIconItemRenderer;
         this.kathaSkillIcons.x = this.skillIconsUI.kathaSkillIconsPos.x;
         this.kathaSkillIcons.y = this.skillIconsUI.kathaSkillIconsPos.y;
         this.addChild(this.kathaSkillIcons);
         this.commonSkillIcon = new com.tencent.morefun.naruto.plugin.exui.reusable.skillView.SkillIconItemRenderer(new MovieClip());
         this.commonSkillIcon.x = this.skillIconsUI.commonSkillIconsPos.x;
         this.commonSkillIcon.y = this.skillIconsUI.commonSkillIconsPos.y;
         this.commonSkillIcon.visible = false;
         this.addChild(this.commonSkillIcon);
         this.otherSkillIcons = new SimpleLayout(1,5,-1);
         this.otherSkillIcons.itemRenderClass = SkillIconItemRenderer;
         this.otherSkillIcons.x = this.skillIconsUI.otherSkillIconsPos.x;
         this.otherSkillIcons.y = this.skillIconsUI.otherSkillIconsPos.y;
         this.addChild(this.otherSkillIcons);
      }
      
      public function set majorRoleData(param1:NinjaSkillCFG) : void
      {
         var _loc2_:SkillCFG = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!param1)
         {
            return;
         }
         _loc5_ = NinjaSkillConfig.instance.getSkillCfgsBySkillIDs(param1.specials);
         _loc6_ = _loc5_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc2_ = _loc5_[_loc6_] as SkillCFG;
            if(!_loc2_.showIcon)
            {
               _loc5_.splice(_loc6_,1);
            }
            _loc6_--;
         }
         this.kathaSkillIcons.dataProvider = _loc5_;
         this.commonSkillIcon.visible = false;
         for each(_loc3_ in param1.normals)
         {
            _loc2_ = SkillConfig.instance.getSkill(_loc3_);
            if(_loc2_ && _loc2_.showIcon)
            {
               this.commonSkillIcon.data = _loc2_;
               this.commonSkillIcon.visible = true;
               break;
            }
         }
         _loc4_ = NinjaSkillConfig.instance.getSkillCfgsBySkillIDs(param1.skills);
         _loc6_ = _loc4_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc2_ = _loc4_[_loc6_] as SkillCFG;
            if(!_loc2_.showIcon)
            {
               _loc4_.splice(_loc6_,1);
            }
            _loc6_--;
         }
         this.otherSkillIcons.dataProvider = _loc4_;
      }
      
      public function set cfgData(param1:NinjaSkillCFG) : void
      {
         this.majorRoleData = param1;
      }
      
      public function set data(param1:*) : void
      {
         var _loc2_:SkillCFG = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:NinjaSecondAwakeItemInfo = null;
         if(param1 is NinjaSkillCFG)
         {
            this.cfgData = param1 as NinjaSkillCFG;
            return;
         }
         this.kathaSkillIcons.visible = false;
         this.commonSkillIcon.visible = false;
         if(!param1)
         {
            return;
         }
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         var _loc8_:NinjaInfo = param1 as NinjaInfo;
         var _loc9_:int = 0;
         while(_loc9_ < _loc8_.secondAwakenItemInfos.length)
         {
            _loc5_ = _loc8_.secondAwakenItemInfos[_loc9_];
            _loc2_ = SkillConfig.instance.getSkill(_loc5_.curSkillId);
            if(!(!_loc2_ || !_loc2_.showIcon))
            {
               if(_loc2_.type == 2)
               {
                  this.kathaSkillIcons.visible = true;
                  _loc7_.push([_loc2_,_loc5_.allSkillId.indexOf(_loc5_.curSkillId)]);
               }
               else if(_loc2_.type == 0)
               {
                  this.commonSkillIcon.tupoData = [_loc2_,_loc5_.allSkillId.indexOf(_loc5_.curSkillId)];
                  this.commonSkillIcon.visible = true;
               }
               else
               {
                  _loc6_.push([_loc2_,_loc5_.allSkillId.indexOf(_loc5_.curSkillId)]);
               }
            }
            _loc9_++;
         }
         this.otherSkillIcons.dataProvider = _loc6_;
         this.kathaSkillIcons.dataProvider = _loc7_;
      }
      
      public function destory() : void
      {
         this.kathaSkillIcons.parent && this.kathaSkillIcons.parent.removeChild(this.kathaSkillIcons);
         this.kathaSkillIcons.dispose();
         this.kathaSkillIcons = null;
         this.commonSkillIcon.parent && this.commonSkillIcon.parent.removeChild(this.commonSkillIcon);
         this.commonSkillIcon.destroy();
         this.commonSkillIcon = null;
         this.otherSkillIcons.parent && this.otherSkillIcons.parent.removeChild(this.otherSkillIcons);
         this.otherSkillIcons.dispose();
         this.otherSkillIcons = null;
         this.skillIconsUI.parent && this.skillIconsUI.parent.removeChild(this.skillIconsUI);
         DisplayUtils.clear(this.skillIconsUI);
         this.skillIconsUI = null;
      }
   }
}
