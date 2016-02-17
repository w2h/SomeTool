package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import flash.display.Sprite;
   import cfgData.dataStruct.SkillCFG;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.TuPoLine;
   import skill.config.NinjaSkillConfig;
   import cfgData.dataStruct.NinjaSkillCFG;
   
   public class TuPoSkillTipsView extends BaseTipsView
   {
       
      private var bgSP:Sprite;
      
      private const offsetHeight:int = 30;
      
      public function TuPoSkillTipsView(param1:Class = null)
      {
         super(param1);
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc5_:SkillCFG = null;
         var _loc6_:SkillTipsView = null;
         var _loc9_:* = 0;
         var _loc10_:TuPoLine = null;
         var _loc2_:Array = param1.arr as Array;
         var _loc3_:uint = param1.curSkillId as uint;
         var _loc4_:uint = param1.ninjaId as uint;
         removeChildren();
         if(!_loc2_)
         {
            return;
         }
         var _loc7_:int = _loc2_.length;
         var _loc8_:int = -1;
         var _loc11_:int = 0;
         while(_loc11_ < _loc7_)
         {
            _loc5_ = _loc2_[_loc11_];
            if(_loc7_ > 1 && _loc3_ == _loc5_.id)
            {
               _loc8_ = _loc11_;
            }
            _loc6_ = new SkillTipsView(null);
            _loc9_ = 1;
            if(_loc8_ > -1 && _loc8_ < _loc7_ - 1 && _loc8_ != _loc11_)
            {
               _loc9_ = this.getNinjaItem(_loc4_,_loc5_);
            }
            _loc6_.tupoData = [_loc5_,_loc11_,_loc9_];
            if(_loc7_ > 1 && _loc3_ == _loc5_.id)
            {
               _loc6_.setCurrentType(_loc5_.name,_loc11_);
            }
            if(_loc11_ > 0)
            {
               _loc6_.getBgSprite().visible = false;
               this.bgSP.height = this.bgSP.height + (_loc6_.getBgSprite().height - this.offsetHeight);
            }
            else
            {
               this.bgSP = _loc6_.getBgSprite();
            }
            _loc6_.y = _loc11_ * (_loc6_.getBgSprite().height - this.offsetHeight);
            addChild(_loc6_);
            if(_loc11_ < _loc7_ - 1)
            {
               _loc10_ = new TuPoLine();
               _loc10_.y = _loc6_.y + (_loc6_.getBgSprite().height - 18);
               addChildAt(_loc10_,1);
            }
            _loc11_++;
         }
      }
      
      private function getNinjaItem(param1:uint, param2:SkillCFG) : int
      {
         var _loc5_:* = 0;
         var _loc6_:Array = null;
         var _loc3_:NinjaSkillCFG = NinjaSkillConfig.instance.getNinjaSkillCfg(param1);
         var _loc4_:int = param2.id;
         if(_loc3_)
         {
            if(param2.type == 0)
            {
               _loc6_ = _loc3_.normalItemIds;
            }
            else if(param2.type == 2)
            {
               _loc6_ = _loc3_.specialItemIds;
            }
            else
            {
               _loc6_ = _loc3_.skillItemIds;
            }
            _loc5_ = _loc6_.indexOf(_loc4_);
            if(_loc5_ > -1)
            {
               _loc5_ = _loc5_ + 1;
               return _loc6_[_loc5_];
            }
         }
         return 0;
      }
      
      override public function destroy() : void
      {
         removeChildren();
         this.bgSP = null;
         super.destroy();
      }
   }
}
